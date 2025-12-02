a, b, c, d = map(int, input().split())

if a <= c:
    if b <= d:
        print('No')
    else:
        print('Yes')
else:
    print("No")