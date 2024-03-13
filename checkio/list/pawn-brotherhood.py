from collections import defaultdict


def safe_pawns(pawns: set) -> int:
    d: dict = {p: True for p in pawns}

    count = 0
    for k in d.keys():
        k1, k2 = (chr(ord(k[0])-1)+str(int(k[1])-1), chr(ord(k[0])+1)+str(int(k[1])-1))
        if k1 in d.keys() or k2 in d.keys():
            count += 1
    return count

print("Example:")
print(safe_pawns({"b4", "d4", "f4", "c3", "e3", "g5", "d2"}))

assert safe_pawns({"f4", "d4", "e3", "b4", "g5", "d2", "c3"}) == 6
assert safe_pawns({"f4", "c4", "b4", "e4", "g4", "d4", "e5"}) == 1

print("The mission is done! Click 'Check Solution' to earn rewards!")
