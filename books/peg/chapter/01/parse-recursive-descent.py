def calc(s):
    # 加算
    pos = s.find("+")
    if pos > 0:
        left = s[:pos]
        right = s[pos+1:]
        return calc(left) + calc(right)

    # 減算
    pos = s.rfind("-") # 減算は左結合規則
    if pos > 0:
        left = s[:pos]
        right = s[pos+1:]
        return calc(left) - calc(right)

    # 乗算
    pos = s.find("*")
    if pos > 0:
        left = s[:pos]
        right = s[pos+1:]
        return calc(left) * calc(right)

    # プリミティブ
    return float(s)

assert calc("1+2+3") == 6.0
assert calc("1+2*3") == 7.0
assert calc("1*2+3") == 5.0
assert calc("1-2-3") == -4.0
