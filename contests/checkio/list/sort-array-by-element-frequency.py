from itertools import groupby
from typing import Iterable


def frequency_sort(items: list[str | int]) -> Iterable[str | int]:
    g = [(k, len(list(g))) for k, g in groupby(sorted(items), key=lambda x: x)]

    return sum(map(lambda x: [x[0]] * x[1], sorted(g, key=lambda x: -x[1])), [])

print("Example:")
print(list(frequency_sort([4, 6, 2, 2, 6, 4, 4, 4])))

# These "asserts" are used for self-checking
assert list(frequency_sort([4, 6, 2, 2, 6, 4, 4, 4])) == [4, 4, 4, 4, 6, 6, 2, 2]
assert list(frequency_sort([4, 6, 2, 2, 2, 6, 4, 4, 4])) == [4, 4, 4, 4, 2, 2, 2, 6, 6]
assert list(frequency_sort(["bob", "bob", "carl", "alex", "bob"])) == [
    "bob",
    "bob",
    "bob",
    "carl",
    "alex",
]
assert list(frequency_sort([17, 99, 42])) == [17, 99, 42]
assert list(frequency_sort([])) == []
assert list(frequency_sort([1])) == [1]

print("The mission is done! Click 'Check Solution' to earn rewards!")
