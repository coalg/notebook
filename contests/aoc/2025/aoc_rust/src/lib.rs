use std::fs;

pub fn read_input(day: u8) -> String {
    let filename = format!("input/day{:02}.txt", day);
    fs::read_to_string(&filename)
        .unwrap_or_else(|_| panic!("Failed to read {}", filename))
}