from itertools import dropwhile

def main():
    n, m = list(map(int, input().split()))

    xs = []
    for _ in range(m):
        a, b = list(map(int, input().split()))
        xs.append((a, b))

    xs = sorted(xs, key=lambda x: x[0] - x[1])

    seal = 0

    f = lambda x: x[0] > n
    while True:
        cs = dropwhile(f, xs)

        cs = next(cs, None)
        if not cs:
            break
        a, b = cs
        n = n - a + b
        seal += 1

    print(seal)

main()