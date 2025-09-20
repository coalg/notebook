N = int(input())

for _ in range(N):
    a, b, c = list(map(int, input().split()))

    print(min(a, c, (a + b + c) // 3))
