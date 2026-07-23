N, M, K = list(map(int, input().split()))

xs = [0] * N

winners = []

for _ in range(K):
    a, b = list(map(int, input().split()))
    xs[a-1] += 1

    if xs[a-1] == M:
        winners.append(str(a))

if winners:
    print(" ".join(winners))
