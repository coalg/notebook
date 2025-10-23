from itertools import groupby


N, K = map(int, input().split())
S = input()

xs = []
for i in range(N):
    for j in range(i+1, N+1):
        xs.append(S[i:j])

xs = sorted(xs)
ys = [(k, len(list(g))) for k, g in groupby(filter(lambda x: len(x) == K, xs))]
ys = sorted(ys, key=lambda x: -x[1])
m = ys[0][1]
ys = list(filter(lambda x: x[1]==m, ys))
ys = list(map(lambda x: x[0], ys))
print(m)
print(" ".join(ys))