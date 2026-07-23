from itertools import groupby, islice
from typing import Iterable, Any


def remove_after_kth(items: list[Any], k: int) -> Iterable[Any]:
    return sum((list(islice(g, k)) for _, g in groupby(items, key=lambda x: x)), [])

print("Example:")
print(list(remove_after_kth([42, 42, 42, 42, 42, 42, 42], 3)))

# These "asserts" are used for self-checking
assert list(remove_after_kth([42, 42, 42, 42, 42, 42, 42], 3)) == [42, 42, 42]
assert list(remove_after_kth([42, 42, 42, 99, 99, 17], 0)) == []
assert list(remove_after_kth([1, 1, 1, 2, 2, 2], 5)) == [1, 1, 1, 2, 2, 2]
assert list(remove_after_kth(['tom', 42, 'bob', 'bob', 99, 'bob', 'tom', 'tom', 99], 2)) == ['tom', 42, 'bob', 'bob', 99, 'tom', 99]

print("The mission is done! Click 'Check Solution' to earn rewards!")
