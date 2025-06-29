t = int(input())

for _ in range(t):
    n = int(input())
    xs = list(map(int, input().strip().split(' ')))

    left = xs[0]
    last = xs[-1]
    count = 1

    while True:
        if 2 * left >= last:
            count += 1
            break
        ls = list(filter(lambda x: 2 * left >= x, xs))

        if not ls:
            count = -1
            break

        mx = max(ls)
        xs = list(filter(lambda x: mx < x, xs))
        left = mx
        count += 1
    print(count)
