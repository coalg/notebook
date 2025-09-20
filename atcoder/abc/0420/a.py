x, y = list(map(int, input().split(' ')))
ans = (x + y) % 12

if ans == 0:
    ans = 12
print(ans)
