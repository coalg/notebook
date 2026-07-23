D = {
    "a": ".-",
    "b": "-...",
    "c": "-.-.",
    "d": "-..",
    "e": ".",
    "f": "..-.",
    "g": "--.",
    "h": "....",
    "i": "..",
    "j": ".---",
    "k": "-.-",
    "l": ".-..",
    "m": "--",
    "n": "-.",
    "o": "---",
    "p": ".--.",
    "q": "--.-",
    "r": ".-.",
    "s": "...",
    "t": "-",
    "u": "..-",
    "v": "...-",
    "w": ".--",
    "x": "-..-",
    "y": "-.--",
    "z": "--..",
}


def count_morse(message: str, letters: str) -> int:
    return 0


print("Example:")
print(count_morse("-------.", "omg"))

# These "asserts" are used for self-checking
assert count_morse("-------.", "omg") == 2
assert count_morse(".....-.-----", "morse") == 4
assert count_morse("-..----.......-..-.", "xtmisuf") == 4

print("The mission is done! Click 'Check Solution' to earn rewards!")
