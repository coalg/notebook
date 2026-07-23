n = int(input())

length = 0
answer = ""
for _ in range(n):
    c, n = input().split()
    n = int(n)

    if n > 100:
        print("Too Long")
        break
    answer += c * n
    length += n

    if length > 100:
        print("Too Long")
        break
else:
    print(answer)