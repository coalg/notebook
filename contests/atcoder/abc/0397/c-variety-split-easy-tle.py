N = int(input().strip())
bags = list(map(int, input().strip().split()))

ans = 0
for (i, _) in enumerate(bags):
    b1 = bags[0:i]
    b2 = bags[i:]
    variety = len(set(b1)) + len(set(b2))
    ans = max(variety, ans)

print(ans)
