N = int(input())
S = input()

ans = []
for i in range(N):
    a = set(S[:i])
    b = set(S[i:])

    ans.append(len(a.intersection(b)))

print(max(ans))
