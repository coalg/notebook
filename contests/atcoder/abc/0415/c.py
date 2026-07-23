
t = int(input())

for i in range(t):
    n = int(input())
    s = input()
    xs = [list(map(int, f'{{0:0{n}b}}'.format(i+1))) for (i, c) in enumerate(s) if c == '1']

    k = [0, 0, 0]
