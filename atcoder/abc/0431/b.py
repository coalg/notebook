X = int(input())
N = int(input())
ws = list(map(int, input().split()))
Q = int(input())

states = [False] * N
ans = X
for _ in range(Q):
    index = int(input()) - 1

    if not states[index]:
        states[index] = True
        ans += ws[index]
    else:
        states[index] = False
        ans -= ws[index]
    print(ans)
