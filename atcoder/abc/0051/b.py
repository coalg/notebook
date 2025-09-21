K, S = map(int, input().split())

K = K + 1

ans = 0
for i in range(K):
    for j in range(K):
        if 0 <= S - i - j < K:
            ans += 1
                
print(ans)
