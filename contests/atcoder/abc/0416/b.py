from itertools import groupby
s = input()

t = []
    
for (i, (j, x)) in enumerate(groupby(s)):
    if j == '.':
        x = "".join(x).replace('.', 'o', 1)
        t.append(x)
    else:
        t.append("".join(x))

print("".join(t))