f = open("./input.txt").readlines()

xs, ys = zip(*map(lambda x: list(map(lambda x: int(x), x.strip().split())), f))

print(sum(x * ys.count(x) for x in xs))
