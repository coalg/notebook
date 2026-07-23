use aoc::read_input;

fn part1(input: &str) -> u128 {
    let lines: Vec<_> = input
        .trim_end()
        .lines()
        .map(|x| x.chars().collect::<Vec<_>>())
        .collect();

    let directions: [(isize, isize); 8] = [
        (-1, -1),
        (0, -1),
        (1, -1),
        (-1, 0),
        (1, 0),
        (-1, 1),
        (0, 1),
        (1, 1),
    ];

    let mut answer = 0;
    for (i, line) in lines.iter().enumerate() {
        for (j, char) in line.iter().enumerate() {
            if *char != '@' {
                continue;
            }
            let mut count = 0;

            for (dx, dy) in directions {
                let (x, y) = (j as isize + dx, i as isize + dy);

                if 0 <= x
                    && x < line.len() as isize
                    && 0 <= y
                    && y < lines.len() as isize
                    && lines[y as usize][x as usize] == '@'
                {
                    count += 1;
                }
            }

            if count < 4 {
                answer += 1;
            }
        }
    }
    answer
}

fn part2(input: &str) -> u128 {
    let lines: Vec<_> = input
        .trim_end()
        .lines()
        .map(|x| x.chars().collect::<Vec<_>>())
        .collect();

    let directions: [(isize, isize); 8] = [
        (-1, -1),
        (0, -1),
        (1, -1),
        (-1, 0),
        (1, 0),
        (-1, 1),
        (0, 1),
        (1, 1),
    ];

    0
}

fn main() {
    let input = read_input(4);
    println!("Part 1: {}", part1(&input));
    println!("Part 2: {}", part2(&input));
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_part1() {
        let input = "..@@.@@@@.
@@@.@.@.@@
@@@@@.@.@@
@.@@@@..@.
@@.@@@@.@@
.@@@@@@@.@
.@.@.@.@@@
@.@@@.@@@@
.@@@@@@@@.
@.@.@@@.@.";
        assert_eq!(part1(&input), 13);
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
