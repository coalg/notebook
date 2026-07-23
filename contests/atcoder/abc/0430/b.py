N, M = map(int, input().split())

xs = []
for _ in range(N):
    line = input()
    xs.append(line)

ys = []
for i in range(N - M + 1):
    for j in range(N - M + 1):
        grid = ''
        for k in range(M):
            x = xs[i+k][j:j+M]
            grid += "".join([''.join(row) for row in x])
        ys.append(grid)

print(len(set(ys)))