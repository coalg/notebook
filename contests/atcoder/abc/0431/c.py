N, M, K = map(int, input().split())
hs = list(map(int, input().split()))
bs = list(map(int, input().split()))

hs = sorted(hs, reverse=True)
bs = sorted(bs, reverse=True)

count = 0
i = 0
j = 0

for k in range(N):
    if j < len(bs) and hs[i] <= bs[j]:
        i += 1
        j += 1
        count += 1
    else:
        i += 1

if count >= K:
    print("Yes")
else:
    print("No")