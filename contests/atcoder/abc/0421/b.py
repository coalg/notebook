def f(x):
    return int("".join(reversed(str(x))))

x, y = map(int, input().split())

for _ in range(8):
    x, y = y, f(x+y)

print(y)
