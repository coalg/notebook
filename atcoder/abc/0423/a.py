x, c = list(map(int, input().split()))

X = x

while True:
    fee = (x // 1000 * 1000) * c // 1000
    a = (x // 1000 * 1000) + fee

    if X < a:
        x -= 1000
        continue
    break

print(x//1000*1000)