def second_index(text: str, symbol: str) -> int | None:
    indices = [i for i, x in enumerate(text) if x == symbol]
    if len(indices) <= 1: return None
    return indices[1]

print("Example:")
print(second_index("sims", "s"))

# These "asserts" are used for self-checking
assert second_index("sims", "s") == 3
assert second_index("find the river", "e") == 12
assert second_index("hi", " ") == None
assert second_index("hi mayor", " ") == None
assert second_index("hi mr Mayor", " ") == 5

print("The mission is done! Click 'Check Solution' to earn rewards!")
