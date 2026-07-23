N, S = list(map(int, input().split()))
xs = list(map(int, input().split()))

ks = [i for i, x in enumerate(xs) if x == 0]

if not ks:
    print(0)
    exit(0)

L = min(S, ks[0])
R = max(S, ks[-1]+1)
print(sum(xs[L:R]) + (R - L))