use aoc::read_input;

fn part1(input: &str) -> i32 {
    let xs = input.lines().filter(|x| !x.is_empty());
    let mut count = 0;
    let mut dial = 50;
    for x in xs {
        let c = x.chars().nth(0).unwrap();
        let n = &x[1..].parse::<i32>().unwrap();

        dial = match c {
            'R' => (dial + n) % 100,
            'L' => (dial - n) % 100,
            _ => unreachable!(),
        };

        if dial == 0 {
            count += 1;
        }
    }
    count
}

fn calc_left_dial(dial: i32, rot_n: i32) -> (i32, i32) {
    let pos = dial - rot_n;
    if dial == 0 {
        (pos.rem_euclid(100), -pos / 100)
    } else if pos % 100 == 0 {
        (0, -pos / 100 + 1)
    } else {
        (pos.rem_euclid(100), (-pos + 100) / 100)
    }
}

fn part2(input: &str) -> i32 {
    let xs = input.lines().filter(|x| !x.is_empty());
    let mut count = 0;
    let mut dial = 50;

    for x in xs {
        let rotation = x.chars().nth(0).unwrap();
        let rot_n = &x[1..].parse::<i32>().unwrap();

        let (next_dial, pass_count) = match rotation {
            'R' => ((dial + rot_n) % 100, (dial + rot_n) / 100),
            'L' => calc_left_dial(dial, *rot_n),
            _ => unreachable!(),
        };

        count += pass_count;
        dial = next_dial
    }
    count
}

fn main() {
    let input = read_input(1);
    println!("Part 1: {}", part1(&input));
    println!("Part 2: {}", part2(&input));
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_part1() {
        let input = "example input";
        assert_eq!(part1(input), 42);
    }
}
