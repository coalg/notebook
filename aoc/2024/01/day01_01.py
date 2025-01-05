f = open("./input.txt").readlines()

xs, ys = zip(*map(lambda x: list(map(lambda x: int(x), x.strip().split())), f))

ans = sum(abs(x - y) for (x, y) in zip(sorted(xs), sorted(ys)))
print(ans)
