from itertools import product
n, k, x = list(map(int, input().split()))

ss = []
for _ in range(n):
    ss.append(input())

x = x - 1
lists = [range(n)] * k

if k == 1:
    print(sorted(ss)[x])
elif k == 2:
    print(sorted(ss[a] + ss[b] for (a, b) in product(*lists))[x])
elif k == 3:
    print(sorted(ss[a] + ss[b] + ss[c] for (a, b, c) in product(*lists))[x])
elif k == 4:
    print(sorted(ss[a] + ss[b] + ss[c] + ss[d] for (a, b, c, d) in product(*lists))[x])
elif k == 5:
    print(sorted(ss[a] + ss[b] + ss[c] + ss[d] + ss[e] for (a, b, c, d, e) in product(*lists))[x])