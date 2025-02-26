// トークンの種類を表す列挙型
#[derive(Debug, PartialEq)]
enum Token {
    Number(f64), // 数値
    Plus,        // 加算演算子 (+)
    Minus,       // 減算演算子 (-)
    Multiply,    // 乗算演算子 (*)
    Divide,      // 除算演算子 (/)
    LeftParen,   // 左括弧 (()
    RightParen,  // 右括弧 ())
}

// 字句解析器 (トークナイザー): 文字列をトークン列に変換する
fn tokenize(expression: &str) -> Result<Vec<Token>, String> {
    let mut tokens = Vec::new();
    let mut current_number = String::new();

    for c in expression.chars() {
        if c.is_digit(10) || c == '.' {
            current_number.push(c);
        } else {
            if !current_number.is_empty() {
                let num = current_number
                    .parse::<f64>()
                    .map_err(|_| "Invalid number".to_string())?;
                tokens.push(Token::Number(num));
                current_number.clear();
            }

            match c {
                '+' => tokens.push(Token::Plus),
                '-' => tokens.push(Token::Minus),
                '*' => tokens.push(Token::Multiply),
                '/' => tokens.push(Token::Divide),
                '(' => tokens.push(Token::LeftParen),
                ')' => tokens.push(Token::RightParen),
                ' ' => continue, // 空白は無視
                _ => return Err(format!("Invalid character: {}", c)),
            }
        }
    }

    // 最後の数値文字列を処理
    if !current_number.is_empty() {
        let num = current_number
            .parse::<f64>()
            .map_err(|_| "Invalid number".to_string())?;
        tokens.push(Token::Number(num));
    }

    Ok(tokens)
}

// 構文木 (AST) のノードを表す列挙型
#[derive(Debug, PartialEq)]
enum Expr {
    Number(f64),                    // 数値
    Add(Box<Expr>, Box<Expr>),      // 加算 (左辺, 右辺)
    Subtract(Box<Expr>, Box<Expr>), // 減算 (左辺, 右辺)
    Multiply(Box<Expr>, Box<Expr>), // 乗算 (左辺, 右辺)
    Divide(Box<Expr>, Box<Expr>),   // 除算 (左辺, 右辺)
}

// 構文解析器: トークン列を構文木に変換する
fn parse(tokens: &[Token]) -> Result<Expr, String> {
    let (expr, pos) = parse_expr(tokens, 0)?;
    // すべてのトークンが消費されたか確認
    if pos != tokens.len() {
        Err("Invalid expression".to_string())
    } else {
        Ok(expr)
    }
}

// 式 (expression) を解析する
fn parse_expr(tokens: &[Token], pos: usize) -> Result<(Expr, usize), String> {
    let (mut left, mut pos) = parse_term(tokens, pos)?;

    loop {
        match tokens.get(pos) {
            Some(Token::Plus) => {
                let (right, next_pos) = parse_term(tokens, pos + 1)?;
                left = Expr::Add(Box::new(left), Box::new(right));
                pos = next_pos;
            }
            Some(Token::Minus) => {
                let (right, next_pos) = parse_term(tokens, pos + 1)?;
                left = Expr::Subtract(Box::new(left), Box::new(right));
                pos = next_pos;
            }
            _ => break,
        }
    }

    Ok((left, pos))
}

// 項 (term) を解析する
fn parse_term(tokens: &[Token], pos: usize) -> Result<(Expr, usize), String> {
    let (mut left, mut pos) = parse_factor(tokens, pos)?;

    loop {
        match tokens.get(pos) {
            Some(Token::Multiply) => {
                let (right, next_pos) = parse_factor(tokens, pos + 1)?;
                left = Expr::Multiply(Box::new(left), Box::new(right));
                pos = next_pos;
            }
            Some(Token::Divide) => {
                let (right, next_pos) = parse_factor(tokens, pos + 1)?;
                left = Expr::Divide(Box::new(left), Box::new(right));
                pos = next_pos;
            }
            _ => break,
        }
    }

    Ok((left, pos))
}

// 因子 (factor) を解析する
fn parse_factor(tokens: &[Token], pos: usize) -> Result<(Expr, usize), String> {
    match tokens.get(pos) {
        Some(Token::Number(num)) => Ok((Expr::Number(*num), pos + 1)),
        Some(Token::LeftParen) => {
            // 左括弧: 括弧内の式を再帰的に解析
            let (expr, next_pos) = parse_expr(tokens, pos + 1)?;
            match tokens.get(next_pos) {
                Some(Token::RightParen) => Ok((expr, next_pos + 1)),
                _ => Err("Mismatched parentheses".to_string()),
            }
        }
        _ => Err("Invalid expression".to_string()),
    }
}

// 構文木を評価して計算結果を求める
fn evaluate(expr: Expr) -> Result<f64, String> {
    match expr {
        Expr::Number(num) => Ok(num),
        Expr::Add(left, right) => Ok(evaluate(*left)? + evaluate(*right)?),
        Expr::Subtract(left, right) => Ok(evaluate(*left)? - evaluate(*right)?),
        Expr::Multiply(left, right) => Ok(evaluate(*left)? * evaluate(*right)?),
        Expr::Divide(left, right) => {
            let right_val = evaluate(*right)?;
            if right_val == 0.0 {
                Err("Division by zero".to_string())
            } else {
                Ok(evaluate(*left)? / right_val)
            }
        }
    }
}

// 小数点以下第三位を四捨五入する関数
fn round_to_two_decimals(num: f64) -> f64 {
    (num * 100.0).round() / 100.0
}

fn calculate(expression: &str) -> Result<f64, String> {
    let tokens = tokenize(expression)?;
    let expr = parse(&tokens)?;
    evaluate(expr).map(round_to_two_decimals)
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_tokenize() {
        let tokens = tokenize("1 + 2 * (3 - 1)").unwrap();
        assert_eq!(
            tokens,
            vec![
                Token::Number(1.0),
                Token::Plus,
                Token::Number(2.0),
                Token::Multiply,
                Token::LeftParen,
                Token::Number(3.0),
                Token::Minus,
                Token::Number(1.0),
                Token::RightParen,
            ]
        );
    }

    #[test]
    fn test_addition() {
        assert_eq!(calculate("1 + 2"), Ok(3.0));
    }

    #[test]
    fn test_subtraction() {
        assert_eq!(calculate("5 - 3"), Ok(2.0));
    }

    #[test]
    fn test_multiplication() {
        assert_eq!(calculate("4 * 5"), Ok(20.0));
    }

    #[test]
    fn test_division() {
        assert_eq!(calculate("10 / 2"), Ok(5.0));
    }

    #[test]
    fn test_division_by_zero() {
        assert_eq!(calculate("10 / 0"), Err("Division by zero".to_string()));
    }

    #[test]
    fn test_complex_expression() {
        assert_eq!(calculate("10 + 2 * 6 - 4 / 2"), Ok(20.0));
    }

    #[test]
    fn test_parentheses() {
        assert_eq!(calculate("(1 + 2) * 3"), Ok(9.0));
        assert_eq!(calculate("10 * (2 + 3)"), Ok(50.0));
        assert_eq!(calculate("10 / (2 + 3)"), Ok(2.0));
    }

    #[test]
    fn test_nested_parentheses() {
        assert_eq!(calculate("10 * (2 + (3 - 1))"), Ok(40.0));
        assert_eq!(calculate("(10 * (2 + 3)) - 1"), Ok(49.0));
        assert_eq!(calculate("((10 / 2) + 5) * 2"), Ok(20.0));
    }

    #[test]
    fn test_decimal_calculations() {
        assert_eq!(calculate("1.5 + 2.5"), Ok(4.0));
        assert_eq!(calculate("5.5 - 3.2"), Ok(2.3));
        assert_eq!(calculate("2.5 * 4.0"), Ok(10.0));
        assert_eq!(calculate("10.0 / 2.5"), Ok(4.0));
        assert_eq!(calculate("1.2 + 3.4 * 5.6"), Ok(20.24));
        assert_eq!(calculate("(1.2 + 3.4) * 5.6"), Ok(25.76));
    }

    #[test]
    fn test_invalid_expression() {
        assert_eq!(calculate("1 + + 2"), Err("Invalid expression".to_string()));
    }

    #[test]
    fn test_mismatched_parentheses() {
        assert_eq!(
            calculate("(1 + 2"),
            Err("Mismatched parentheses".to_string())
        );
        assert_eq!(calculate("1 + 2)"), Err("Invalid expression".to_string()));
    }
}

fn main() {
    let expressions = [
        "1 + 2",
        "10 + 2 * 6",
        "10.5 + 2 * 6 - 4 / 2",
        "10 / 0",
        "10 + 2a",
        "(1 + 2) * 3",
        "10 * (2 + 3)",
        "10 / (5-3)",
        "1++2",
        "(1+2",
        "1+2)",
    ];
    for expression in expressions.iter() {
        match calculate(expression) {
            Ok(result) => println!("{} = {}", expression, result),
            Err(err) => println!("Error evaluating '{}': {}", expression, err),
        }
    }
}
