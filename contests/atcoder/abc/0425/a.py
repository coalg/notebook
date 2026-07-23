N = int(input())

print(sum((-1)**i * i ** 3 for i in range(1, N+1)))