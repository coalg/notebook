n = int(input())
s = input()

ans = 0
j = 0
for i, c in enumerate(s):
    if c == 'A':
        ans += abs(i - j)
        j += 2

ans2 = 0
j = 1
for i, c in enumerate(s):
    if c == 'A':
        ans2 += abs(i - j)
        j += 2

print(min(ans, ans2))