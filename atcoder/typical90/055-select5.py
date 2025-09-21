from itertools import combinations
from math import prod

N, P, Q = map(int, input().split())

xs = map(int, input().split())

ans = 0
for a, b, c, d, e in combinations(xs, 5):
    x = prod(map(lambda x: x % P, [a,b,c,d,e]))
    if x % P == Q:
        ans += 1

print(ans)