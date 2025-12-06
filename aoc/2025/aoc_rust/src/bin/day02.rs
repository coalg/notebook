use aoc::read_input;

fn parse_range_pairs(input: &str) -> Vec<(i128, i128)> {
    input
        .trim_end()
        .split(',')
        .filter_map(|s| {
            let mut parts = s.split('-');
            Some((
                parts.next()?.parse::<i128>().ok()?,
                parts.next()?.parse::<i128>().ok()?,
            ))
        })
        .collect()
}

fn part1(input: &str) -> i128 {
    let xs: Vec<(i128, i128)> = parse_range_pairs(input);
    let mut answer = 0;
    for (start, end) in xs {
        for x in start..=end {
            let s = x.to_string();
            if s.len() % 2 == 1 {
                continue;
            }
            let (fst, snd) = s.split_at(s.len() / 2);

            if fst == snd {
                answer += x;
            }
        }
    }
    answer
}

fn divisors(n: usize) -> Vec<usize> {
    (1..n).filter(|&i| n % i == 0).collect()
}

fn part2(input: &str) -> i128 {
    let xs: Vec<(i128, i128)> = parse_range_pairs(input);
    let mut answer = 0;

    for (start, end) in xs {
        for x in start..=end {
            let s = x.to_string();

            let divisors = divisors(s.len());
            for divide in divisors {
                let chunks: Vec<_> = s.as_bytes().chunks_exact(divide.into()).collect();

                let first = chunks[0];

                if chunks.iter().all(|chunk| *chunk == first) {
                    answer += x;
                    break;
                }
            }
        }
    }

    answer
}

fn main() {
    let input = read_input(2);
    println!("Part 1: {}", part1(&input));
    println!("Part 2: {}", part2(&input));
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_part1() {
        let input = "11-22,95-115,998-1012,1188511880-1188511890,222220-222224,1698522-1698528,446443-446449,38593856-38593862,565653-565659,824824821-824824827,2121212118-2121212124";
        assert_eq!(part1(&input), 1227775554);
    }

    #[test]
    fn test_part2() {
        let input = "11-22,95-115,998-1012,1188511880-1188511890,222220-222224,1698522-1698528,446443-446449,38593856-38593862,565653-565659,824824821-824824827,2121212118-2121212124";
        assert_eq!(part2(&input), 4174379265);
    }
}
