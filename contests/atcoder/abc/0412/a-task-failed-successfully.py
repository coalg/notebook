n = int(input())

count = 0
for _ in range(n):
    a, b = list(map(int, input().strip().split(' ')))
    if a < b:
        count += 1

print(count)
