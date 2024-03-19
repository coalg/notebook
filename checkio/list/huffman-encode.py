from collections import Counter


def huffman_encode(s: str) -> str:
    # your code here
    freq = Counter(s)
    freq = reversed(freq.most_common())
    while freq:
        x = freq.pop(0)
        y = freq.pop(0)

    return ""


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
