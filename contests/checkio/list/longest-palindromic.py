import itertools


def longest_palindromic(a: str) -> str:
    if len(a) == 1: return a
    xs = []
    for i in range(len(a)-1):
        for j in range(1, len(a) - i + 1):
            x = "".join(list(itertools.islice(a, i, i+j)))
            if x == x[::-1]:
                xs.append((x, len(x)))
    # xs = sorted(xs, key=lambda x: x[1])

    lx = 0
    mx = ""
    for x, l in xs:
        if lx < l:
            mx = x
            lx = l
    return mx


print("Example:")
print(longest_palindromic("abc"))

# These "asserts" are used for self-checking
assert longest_palindromic("abc") == "a"
assert longest_palindromic("abacada") == "aba"
assert longest_palindromic("artrartrt") == "rtrartr"
assert longest_palindromic("aaaaa") == "aaaaa"
assert longest_palindromic('1') == '1'
print("The mission is done! Click 'Check Solution' to earn rewards!")
