from typing import Iterable

def replace(output: list, head: int, data: list) -> list:
    output.append(max(data))
    if len(data) == 1:
        output.append(-1)
        return output
    head = data[0]
    return replace(output, head, data[1:])

def replace_biggest(data: list[int]) -> Iterable[int]:
    if not data: return []
    if len(data) == 1: return [-1]

    return replace([], data[0], data[1:])


print("Example:")
print(list(replace_biggest([17, 18, 5, 4, 6, 1])))

# These "asserts" are used for self-checking
assert list(replace_biggest([17, 18, 5, 4, 6, 1])) == [18, 6, 6, 6, 1, -1]
assert list(replace_biggest([1, 2, 3, 4, 5, 6])) == [6, 6, 6, 6, 6, -1]
assert list(replace_biggest([1, 1, 1])) == [1, 1, -1]
assert list(replace_biggest([1])) == [-1]

print("The mission is done! Click 'Check Solution' to earn rewards!")
