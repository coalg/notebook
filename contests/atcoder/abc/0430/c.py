N, A, B = map(int, input().split())
S = input()

a_s = [0] * (N+1)
b_s = [0] * (N+1)

for i in range(1, N+1):
    if S[i-1] == 'a':
        a_s[i] = a_s[i-1] + 1
    else:
        a_s[i] = a_s[i-1]
    
    if S[i-1] == 'b':
        b_s[i] = b_s[i-1] + 1
    else:
        b_s[i] = b_s[i-1]

ans = 0
for i in range(N):
    for j in range(i+1, N):
        a = a_s[j] - a_s[i-1]
        b = b_s[j] - b_s[i-1]
        if a >= A and b < B:
            # print(i, j)
            ans += 1
print(ans)