N, Q = map(int, input().split())
xs = list(map(int, input().split()))

bs = xs + xs
S = [0] * (N * 2 + 1)

for i in range(len(S)-1):
    S[i+1] += S[i] + bs[i]

idx = 0
for _ in range(Q):
    query = list(map(int, input().split()))

    if query[0] == 1:
        c = query[1]
        idx += c
        idx = idx % N
    else:
        l, r = query[1] - 1, query[2]
        print(S[r+idx] - S[l+idx])
