N = int(input())

xs = [1]
for i in range(1, N + 1):
    a = sum(map(lambda x: sum(map(int, list(str(x)))), xs))
    xs.append(a)

print(xs[-1])
