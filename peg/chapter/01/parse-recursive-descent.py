def calc(s):
    pos = s.find("*")
    if pos > 0:
        left = s[:pos]
        right = s[pos+1:]
        return calc(left) * calc(right)
    pos = s.find("+")
    if pos > 0:
        left = s[:pos]
        right = s[pos+1:]
        return calc(left) + calc(right)
    return float(s)

assert calc("1+2+3") == 6.0
assert calc("1+2*3") == 7.0
assert calc("1*2+3") == 5.0
