x = "".join(map(str, range(1, 10000)))
def counting_series(n: int) -> int:
    return int(x[n])

print("Example:")
print(counting_series(1))

# These "asserts" are used for self-checking
assert counting_series(0) == 1
assert counting_series(10) == 0
assert counting_series(100) == 5

print("The mission is done! Click 'Check Solution' to earn rewards!")
