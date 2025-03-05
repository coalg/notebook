use std::{io::stdin, vec};

fn main() {
    let mut memories: Vec<f64> = vec![0.0; 10];
    let mut prev_result: f64 = 0.0;

    for line in stdin().lines() {
        let line = line.unwrap();
        if line.is_empty() {
            break;
        }

        let tokens: Vec<&str> = line.split(char::is_whitespace).collect();

        let is_memory = tokens[0].starts_with("mem");
        if is_memory && tokens[0].ends_with('+') {
            add_and_print_memory(&mut memories, tokens[0], prev_result);
            continue;
        } else if is_memory && tokens[0].ends_with('-') {
            add_and_print_memory(&mut memories, tokens[0], -prev_result);
            continue;
        }

        let left: f64 = eval_token(tokens[0], &memories);
        let right: f64 = eval_token(tokens[2], &memories);

        let result = eval_operator(left, tokens[1], right);

        print_output(result);

        prev_result = result;
    }
}

fn eval_token(token: &str, memories: &[f64]) -> f64 {
    if token.starts_with("mem") {
        let slot_index: usize = token.strip_prefix("mem").unwrap().parse().unwrap();
        memories[slot_index]
    } else {
        token.parse().unwrap()
    }
}

fn eval_operator(left: f64, operator: &str, right: f64) -> f64 {
    match operator {
        "+" => left + right,
        "-" => left - right,
        "*" => left * right,
        "/" => left / right,
        _ => {
            unreachable!()
        }
    }
}

fn print_output(value: f64) {
    println!("  => {}", value)
}

fn add_and_print_memory(memories: &mut [f64], token: &str, prev_result: f64) {
    let slot_index: usize = token.strip_prefix("mem").unwrap().parse().unwrap();
    memories[slot_index] += prev_result;
    print_output(memories[slot_index]);
}
