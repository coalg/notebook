from typing import Iterable


def median_three(els: Iterable[int]) -> Iterable[int]:
    if not els: return ""
    if len(els) == 1: return [els[0]]
    if len(els) == 2: return els[0:2]

    return els[0:2] + [list(sorted([x, y, z]))[1] for x, y, z in zip(els, els[1:], els[2:])]


print("Example:")
print(list(median_three([1, 2, 3, 4, 5, 6, 7])))

assert median_three([1, 2, 3, 4, 5, 6, 7]) == [1, 2, 2, 3, 4, 5, 6]
assert median_three([1]) == [1]
assert median_three([1, 2]) == [1, 2]

print("The mission is done! Click 'Check Solution' to earn rewards!")
