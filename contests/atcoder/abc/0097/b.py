X = int(input())

ans = []

for a in range(1, 33):
    for b in range(2, 10):
        x = a ** b

        if x <= X:
            ans.append(x)

print(max(ans))