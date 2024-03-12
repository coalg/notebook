from textwrap import wrap
from typing import Iterable


def split_pairs(text: str) -> Iterable[str]:
    # your code here
    if not text: return []
    xs = wrap(text, 2)
    if len(xs[-1]) == 1: xs[-1] = xs[-1] + "_"
    return xs


print("Example:")
print(list(split_pairs("abcd")))

assert list(split_pairs("abcd")) == ["ab", "cd"]
assert list(split_pairs("abc")) == ["ab", "c_"]
assert list(split_pairs("abcdf")) == ["ab", "cd", "f_"]
assert list(split_pairs("a")) == ["a_"]
assert list(split_pairs("")) == []

print("The mission is done! Click 'Check Solution' to earn rewards!")
