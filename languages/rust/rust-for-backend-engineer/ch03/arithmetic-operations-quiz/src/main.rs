use rand::Rng;

fn main() {
    let mut num_of_correct = 0;

    while num_of_correct < 3 {
        let op1 = rand::thread_rng().gen_range(0..100);
        let op2 = rand::thread_rng().gen_range(0..100);
        println!("{} + {} = ??", op1, op2);
        println!("?? の値を入力してください：");
        let mut ans_input = String::new();
        std::io::stdin().read_line(&mut ans_input).unwrap();

        let ans_input = ans_input.trim().parse::<i32>().unwrap();
        dbg!(ans_input);
        if dbg!(ans_input == op1 + op2) {
            println!("正解！");
            num_of_correct += 1;
            if num_of_correct >= 3 {
                break;
            }
        } else {
            println!("不正解！")
        }

        let op1 = rand::thread_rng().gen_range(0..100);
        let op2 = rand::thread_rng().gen_range(0..100);
        println!("{} - {} = ??", op1, op2);
        println!("?? の値を入力してください：");
        let mut ans_input = String::new();
        std::io::stdin().read_line(&mut ans_input).unwrap();

        let ans_input = ans_input.trim().parse::<i32>().unwrap();
        dbg!(ans_input);
        if dbg!(ans_input == op1 - op2) {
            println!("正解！");
            num_of_correct += 1;
        } else {
            println!("不正解！")
        }

        println!("i32 が扱えるデータ範囲: {} ~ {}", i32::MIN, i32::MAX);
        println!("u32 が扱えるデータ範囲: {} ~ {}", u32::MIN, u32::MAX);
    }
}
