n = int(input())

xs = []
for _ in range(n):
    xs.append(input())

i, name = input().split()
i = int(i)

if xs[i-1] == name:
    print('Yes')
else:
    print("No")