from collections import Counter
from bisect import insort
from pprint import pprint
from typing import Union

class Leaf:
    def __init__(self, x):
        self.data = x

    def __repr__(self):
        return f"ldata: {self.data}"
    def __str__(self):
        return f"ldata: {self.data}"

class Node:
    def __init__(self, left: Union['Node', Leaf], right: Union['Node', Leaf]) -> None:
        self.left = left
        self.right = right
        (lv, lc) = left.data
        (rv, rc) = right.data
        self.data = (lv + rv, lc + rc)

    def __repr__(self):
        return f"ndata: {self.data}"
    def __str__(self):
        return f"ndata: {self.data}"


def insert(xs: list, node: Union[Node, Leaf]) -> None:
    nv, nc = node.data
    i = 0
    while True:
        v, c = xs[i].data
        if nc < c:
            break
        elif nc == c and nv < v:
            break
        i+=1
        if i == len(xs):
            break
    xs.insert(i, node)
    return xs

def encode(s: str, node: Node) -> str:

    def dfs(c: str, node: Union[Node, Leaf], enc: str):
        if type(node) == Leaf and node.data[0] == c:
            return enc
        elif type(node) == Leaf:
            return ''
        return dfs(c, node.left, enc + '0') + dfs(c, node.right, enc + '1')
    return "".join(dfs(c, node, '') for c in s)


def huffman_encode(s: str) -> str:
    if not s: return ""
    freq = Counter(s)
    freq = list(map(Leaf, sorted(freq.most_common(), key=lambda x: (x[1], x[0]))))

    if len(freq) == 1:
        print(freq[0])
        return ("0" * freq[0].data[1])
    while True:
        if len(freq) <= 1:
            z = freq[0]
            break
        x = freq.pop(0)
        y = freq.pop(0)
        z = Node(x, y)
        if not freq: break
        freq = insert(freq, z)
    s = encode(s, z)
    return s

print("Example:")
print(huffman_encode("BADABUM"))

# These "asserts" are used for self-checking
assert huffman_encode("BADABUM") == "1001110011000111"
assert (
    huffman_encode("A DEAD DAD CEDED A BAD BABE A BEADED ABACA BED")
    == "1000011101001000110010011101100111001001000111110010011111011111100010001111110100111001001011111011101000111111001"
)
assert (
    huffman_encode("no devil lived on")
    == "100101111000001110010011111011010110001000111101100"
)
assert huffman_encode("an assassin sins") == "110111100110001100010111110001011110"
assert huffman_encode("aaaa") == "0000"
assert huffman_encode("") == ""
assert huffman_encode("T isnt t") == "01000011101100110011"
assert (
    huffman_encode("how quickly daft jumping zebras vex")
    == "00101011011011011001111101000111111110100101010111001100000011110000011001011001000101001011011100011011000010011011101000111111010000111101000111010011000110111"
)
assert (
    huffman_encode("amazingly few discotheques provide jukeboxes")
    == "1100100010110011100001110001111110100001011011101111100100010111101111010111101111100110100011111111010000101010010010111101001000011010100101001111110110011011111110100000001001110001010011001001011"
)

print("The mission is done! Click 'Check Solution' to earn rewards!")
