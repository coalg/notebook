x, y = list(map(int, input().split(' ')))

xs = []
for _ in range(x):
    xs.append(input())

ys = list(zip(*xs))

ps = [0] * x


for (i, y) in enumerate(ys):
    ones = y.count('1')
    zeros = y.count('0')

    if ones == 0 or zeros == 0:
        for (i, x) in enumerate(ps):
            ps[i] += 1
        continue

    if ones > zeros:
        ids = [j for (j, k) in enumerate(y) if k == '0']
    else:
        ids = [j for (j, k) in enumerate(y) if k == '1']

    for ix in ids:
        ps[ix] += 1
    

ans = ' '.join(([str(i+1) for (i, x) in enumerate(ps) if max(ps) == x]))

print(ans)
