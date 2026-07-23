N = int(input())
xs = list(map(int, input().split()))

count = 0
for i in range(N):
    if xs[i] == 1:
        break
    count+=1

count +=1
for i in range(N-1, 0, -1):
    if xs[i] == 1:
        break
    count += 1

print(max(N-count, 0))