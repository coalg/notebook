def is_stripe(x: str) -> bool:
    vowels = 'aeiouy'
    if len(x) == 1: return False
    xs = list(map(lambda x: x in vowels, x[0::2]))
    ys = list(map(lambda x: x not in vowels, x[1::2]))

    return (all(xs) and all(ys)) or not (any(xs) or any(ys))

def not_has_numbers(x: str) -> bool:
    return not any(char.isdigit() for char in x)

def checkio(line: str) -> int:
    lines = line.replace('.', ' ').replace(',', ' ').replace('?', '').lower().split()
    lines = list(filter(not_has_numbers, lines))

    return list(map(is_stripe, lines)).count(True)

print("Example:")
# print(checkio("My name is ..."))

# These "asserts" are used for self-checking
assert checkio("My name is ...") == 3
assert checkio("Hello world") == 0
assert checkio("A quantity of striped words.") == 1
assert checkio("Dog,cat,mouse,bird.Human.") == 3
assert checkio('To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it?') == 8
assert checkio('1st 2a ab3er root rate') == 1

print("The mission is done! Click 'Check Solution' to earn rewards!")
