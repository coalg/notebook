s = input().strip()
t = input().strip()

xs = []
for (i, e) in enumerate(s):
    if i == 0:
        continue
    if e.isupper():
        xs.append(s[i-1])

if set(t).issuperset(set(xs)):
    print("Yes")
else:
    print("No")
