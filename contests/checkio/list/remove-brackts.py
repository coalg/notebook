def remove_brackets(line: str) -> str:
    stack = []
    left_bracket = '({['
    right_bracket = ')}]'
    brackets = {'[': ']', '{': '}', '(': ')'}

    result = []
    for c in line:
        if c in left_bracket:
            stack.append(c)
        if c in right_bracket:
            x = stack.pop()
            if brackets[x] == c:
                result.append(x)
                result.append(c)
    print("".join(result))
    return "".join(result)

print("Example:")
# print(remove_brackets("(()()"))

# These "asserts" are used for self-checking
assert remove_brackets("(()()") == "()()"
assert remove_brackets("[][[[") == "[]"
assert remove_brackets("[[(}]]") == "[[]]"
assert remove_brackets("[[{}()]]") == "[[{}()]]"
assert remove_brackets("[[[[[[") == ""
assert remove_brackets("[[[[}") == ""
assert remove_brackets("") == ""
# assert remove_brackets("[(])") == "()"

print("The mission is done! Click 'Check Solution' to earn rewards!")
