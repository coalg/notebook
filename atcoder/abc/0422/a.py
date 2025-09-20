a, b = input().split('-')

if b == '8':
    a = int(a) + 1
    b = 1
else:
    b = int(b) + 1

print(f"{a}-{b}")