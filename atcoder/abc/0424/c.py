import sys

sys.setrecursionlimit(10**9)

N = int(input())
G = [[] for _ in range(N+1)]

for i in range(1, N+1):
    a, b = map(int, input().split())
    G[a].append(i)
    G[b].append(i)

ok = [0] * (N + 1)

def dfs(v):
    ok[v] = 1

    for vv in G[v]:
        if not ok[vv]:
            dfs(vv)

dfs(0)

print(sum(ok) - 1)