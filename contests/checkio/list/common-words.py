def checkio(line1: str, line2: str) -> str:
    return ",".join(sorted(set(line1.split(",")).intersection(line2.split(','))))


print("Example:")
print(checkio("hello,world", "hello,earth"))

# These "asserts" are used for self-checking
assert checkio("hello,world", "hello,earth") == "hello"
assert checkio("one,two,three", "four,five,six") == ""
assert checkio("one,two,three", "four,five,one,two,six,three") == "one,three,two"

print("The mission is done! Click 'Check Solution' to earn rewards!")
