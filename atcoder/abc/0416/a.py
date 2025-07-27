x, l, r = list(map(int, input().split()))
s = input()[l-1:r]

if all(map(lambda x: x == 'o', s)):
    print("Yes")
else:
    print("No")