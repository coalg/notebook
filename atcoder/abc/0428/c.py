Q = int(input())

xs = []
balance = []
p = 0
mn = 0

for i in range(Q):
    q, *b = input().split()
    q = int(q)
    if q == 1:
        b = b[0]
        xs.append(b[0])
        if b == '(':
            p += 1
        else:
            p -= 1
        balance.append((p, min(mn, p)))
        mn = min(mn, p)
    else:
        xs.pop()
        balance.pop()

        if balance:
            p = balance[-1][0]
            mn = balance[-1][1]
        else:
            p = 0
            mn = 0
        
    if mn >= 0 and p == 0:
        print("Yes")
    else:
        print("No")
