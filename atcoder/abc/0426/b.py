import itertools
x = input()
x = sorted(x)

xs = [k for k, g in itertools.groupby(x) if len(list(g)) == 1]

print(xs[0])