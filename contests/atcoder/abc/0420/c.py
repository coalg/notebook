n, q = list(map(int, input().split(' ')))
xs = list(map(int, input().split(' ')))
ys = list(map(int, input().split(' ')))

ans = sum(min(x, y) for (x, y) in zip(xs, ys))

for _ in range(q):
    name, x, v = input().split(' ')

    x = int(x) - 1
    v = int(v)

    if name == 'A':
        ans += min(v, ys[x]) - min(xs[x], ys[x])
        xs[x] = v
    else:
        ans += min(v, xs[x]) - min(xs[x], ys[x])
        ys[x] = v
    
    print(ans)