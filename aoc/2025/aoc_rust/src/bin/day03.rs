use aoc::read_input;

fn part1(input: &str) -> u128 {
    let lines = input.trim_end().lines();

    let mut ans: u128 = 0;
    for line in lines {
        let digits: Vec<u128> = line
            .chars()
            .map(|x| x.to_digit(10).unwrap() as u128)
            .collect();
        if let Some((i, x)) = digits[..digits.len() - 1]
            .iter()
            .rev()
            .enumerate()
            .max_by_key(|&(_, val)| val)
        {
            let k = digits.len() - i - 1;
            if let Some((_, y)) = digits[k..].iter().enumerate().max_by_key(|(_, val)| *val) {
                let z = 10 * x + y;
                ans += z;
            }
        }
    }
    ans
}

fn part2(input: &str) -> u128 {
    let lines = input.trim_end().lines();
    let mut answer = 0;
    for line in lines {
        let mut digits: Vec<_> = Vec::new();
        let mut index = 0;
        let chars: Vec<char> = line.chars().collect();

        for remain in (0..12).rev() {
            let slice = &chars[index..chars.len() - remain];
            index += slice.len()
                - slice
                    .iter()
                    .rev()
                    .enumerate()
                    .max_by_key(|(_, val)| *val)
                    .unwrap()
                    .0
                - 1;
            digits.push(chars[index]);
            index += 1;
        }
        let ans = digits.iter().collect::<String>().parse::<u128>().unwrap();
        answer += ans;
    }
    answer
}

fn main() {
    let input = read_input(3);
    println!("Part 1: {}", part1(&input));
    println!("Part 2: {}", part2(&input));
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_part1() {
        let input = "987654321111111
811111111111119
234234234234278
818181911112111
";
        assert_eq!(part1(&input), 357);
    }

    #[test]
    fn test_part2() {
        let input = "987654321111111
811111111111119
234234234234278
818181911112111
";
        assert_eq!(part2(&input), 3121910778619);
    }
}
