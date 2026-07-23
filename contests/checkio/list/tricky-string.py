def tricky_string(text: str) -> str:
    checkio = "CheckIO"
    lenc = len(checkio)

    result = []
    for i in range(0, len(text) - lenc + 1):
        x = text[i:lenc+i]
        y = checkio

        c = [a == b for a, b in zip(x, y)].count(True)
        result.append((c, text[i:lenc+i]))
    mx = max(c for c, _ in result)
    ans = ""
    for c, x in result:
        if c == mx:
            ans = x
            break
    ans = text.replace(ans, checkio, 1)
    print(ans)
    return ans


print("Example:")
print(tricky_string("Checkioa"))

# These "asserts" are used for self-checkingf
assert tricky_string("checkIO") == "CheckIO"
assert tricky_string("zcheckzz") == "zCheckIO"
assert tricky_string("SoManyChoicesHere") == "SoManyCheckIOHere"
assert tricky_string('CcchECKioo') == 'CheckIOioo'
assert tricky_string('zzzCheckzzzzCheckiOzzzzCheckiOzzzz') == 'zzzCheckzzzzCheckIOzzzzCheckiOzzzz'

print("The mission is done! Click 'Check Solution' to earn rewards!")
