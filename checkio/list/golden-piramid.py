def count_gold(pyramid: list[list[int]]) -> int:
    for i, _ in enumerate(pyramid):
        if i == len(pyramid)-1: break
        for j, _ in enumerate(pyramid[i+1]):
            if j == 0:
                pyramid[i+1][j] += pyramid[i][j]
                continue
            if j == len(pyramid[i+1])-1:
                pyramid[i+1][j] += pyramid[i][j-1]
                continue
            pyramid[i+1][j] += max(pyramid[i][j-1], pyramid[i][j])
    return max(pyramid[-1])


print("Example:")
print(
    count_gold(
        [
            [1],
            [2, 3],
            [3, 3, 1],
            [3, 1, 5, 4],
            [3, 1, 3, 1, 3],
            [2, 2, 2, 2, 2, 2],
            [5, 6, 4, 5, 6, 4, 3],
        ]
    )
)

# These "asserts" are used for self-checking
assert (
    count_gold(
        [
            [1],
            [2, 3],
            [3, 3, 1],
            [3, 1, 5, 4],
            [3, 1, 3, 1, 3],
            [2, 2, 2, 2, 2, 2],
            [5, 6, 4, 5, 6, 4, 3],
        ]
    )
    == 23
)
assert (
    count_gold(
        [
            [1],
            [2, 1],
            [1, 2, 1],
            [1, 2, 1, 1],
            [1, 2, 1, 1, 1],
            [1, 2, 1, 1, 1, 1],
            [1, 2, 1, 1, 1, 1, 9],
        ]
    )
    == 15
)
assert count_gold([[9], [2, 2], [3, 3, 3], [4, 4, 4, 4]]) == 18
assert (
    count_gold(
        [[2], [7, 9], [0, 8, 6], [4, 7, 6, 8], [0, 5, 5, 4, 1], [9, 1, 0, 1, 6, 9]]
    )
    == 35
)
assert (
    count_gold(
        [
            [4],
            [3, 0],
            [5, 1, 1],
            [2, 0, 2, 0],
            [1, 1, 1, 8, 3],
            [5, 3, 4, 8, 2, 8],
            [1, 0, 5, 0, 4, 3, 1],
        ]
    )
    == 30
)
assert (
    count_gold(
        [
            [6],
            [7, 9],
            [3, 8, 3],
            [3, 4, 0, 2],
            [6, 9, 9, 6, 8],
            [3, 7, 0, 8, 2, 2],
            [0, 6, 3, 0, 0, 6, 7],
        ]
    )
    == 49
)
assert (
    count_gold(
        [
            [6],
            [0, 6],
            [3, 0, 7],
            [0, 4, 2, 9],
            [4, 4, 3, 6, 9],
            [3, 1, 0, 5, 9, 0],
            [8, 9, 7, 7, 3, 4, 5],
        ]
    )
    == 50
)
assert (
    count_gold(
        [
            [6],
            [6, 9],
            [7, 1, 4],
            [6, 9, 9, 7],
            [1, 6, 7, 9, 7],
            [5, 7, 2, 6, 0, 9],
            [1, 2, 2, 6, 0, 1, 6],
            [8, 5, 0, 3, 1, 4, 3, 1],
            [9, 6, 4, 1, 1, 9, 3, 7, 9],
            [5, 8, 4, 3, 5, 4, 5, 1, 8, 3],
        ]
    )
    == 66
)

print("The mission is done! Click 'Check Solution' to earn rewards!")
