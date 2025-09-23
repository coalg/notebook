N = int(input())
A, B, C = map(int, input().split())

K = 9999
ans = K+1
for i in range(K+1):
    for j in range(K+1):
        tmp = A * i + B * j
        if tmp % C != 0 or tmp > N:
            continue
        z = (N - tmp) // C

        if ans > i + j + z:
            ans = i + j + z

print(ans)