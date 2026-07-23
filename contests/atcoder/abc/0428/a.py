S, A, B, X = map(int, input().split())

x = X // (A + B)

y = (X - x * (A + B)) * S

ans = x * S * A + min(y, A*S)
print(ans)
