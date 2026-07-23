N, M = map(int, input().split())

edges = [tuple(map(int, input().split())) for _ in range(M)]

ans = M

for bit in range(2 ** N):
    delete_count = 0
    xs = []

    for u, v in edges:
        xs.append(((bit >> u), (bit >> v)))
        if (1 & (bit >> u)) == (1 & (bit >> v)):
            delete_count += 1

    ans = min(ans, delete_count)

print(ans)