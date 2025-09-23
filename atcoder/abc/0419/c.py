N = int(input())

xs = []
ys = []

for _ in range(N):
    r, c = map(int, input().split())
    xs.append(r)
    ys.append(c)


mx = max(xs) - min(xs)
my = max(ys) - min(ys)

m = max(mx, my)

if m % 2 == 0:
    print(m // 2)
else:
    print(m // 2 + 1)

