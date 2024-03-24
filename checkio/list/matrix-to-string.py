Row = tuple[int, int, int, int, int]
Grid = tuple[Row, Row, Row, Row, Row]


def converter(matrix: Grid) -> str:
    # your code here
    xs = [x for xs in matrix for x in xs]

    indexes = [97, 65]
    ans = "".join([chr(indexes[x-1] + i) for i, x in enumerate(xs) if x != 0])
    return ans



print("Example:")
print(
    converter(
        (
            (0, 0, 1, 0, 0),
            (0, 1, 0, 1, 0),
            (1, 0, 2, 0, 1),
            (0, 1, 0, 1, 0),
            (0, 0, 1, 0, 0),
        )
    )
)

# These "asserts" are used for self-checking
assert (
    converter(
        (
            (0, 0, 1, 0, 0),
            (0, 1, 0, 1, 0),
            (1, 0, 2, 0, 1),
            (0, 1, 0, 1, 0),
            (0, 0, 1, 0, 0),
        )
    )
    == "cgikMoqsw"
)
assert (
    converter(
        (
            (1, 0, 1, 0, 1),
            (0, 2, 0, 2, 0),
            (1, 0, 1, 0, 1),
            (0, 2, 0, 2, 0),
            (1, 0, 1, 0, 1),
        )
    )
    == "aceGIkmoQSuwy"
)

print("The mission is done! Click 'Check Solution' to earn rewards!")
