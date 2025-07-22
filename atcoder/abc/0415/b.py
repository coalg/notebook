s = input()

xs = [i+1 for (i, x) in enumerate(s) if x == '#']

for j in range(0, len(xs), 2):
    print(f"{xs[j]},{xs[j+1]}")