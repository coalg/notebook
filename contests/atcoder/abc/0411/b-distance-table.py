import operator

n = int(input())
xs = input().strip().split()
xs = list(map(int, xs))
l = len(xs)

def scanl(f, base, l):
    for x in l:
        base = f(base, x)
        yield base

for i in range(l):
    ys = list(scanl(operator.add, 0, xs[i:]))
    print(*ys)
