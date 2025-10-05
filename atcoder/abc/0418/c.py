import bisect

N, Q = map(int, input().split())
xs = sorted(map(int, input().split()))
l = len(xs)

sums = [0] * (N + 1)

for i in range(l):
    sums[i+1] += sums[i] + xs[i]

for _ in range(Q):
    b = int(input())
    i = bisect.bisect_left(xs, b)

    ans = sums[i] + (b - 1) * (l - i) + 1
    if ans > sums[-1]:
        print(-1)
    else:
        print(ans)
