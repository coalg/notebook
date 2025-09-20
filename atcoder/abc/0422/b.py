H, W = list(map(int, input().split()))

def check(mp, i, j):
    dirs = [(-1, 0), (1, 0), (0, -1), (0, 1)]

    count = 0
    for dx, dy in dirs:
        if (dx == -1 and j == 0) or (dx == 1 and j+1 == W):
            continue
        if (dy == -1 and i == 0) or (dy == 1 and i+1 == H):
            continue

        if mp[i + dy][j + dx] == '#':
            count += 1
    
    return count == 2 or count == 4

mp = []
for _ in range(H):
    mp.append(input())

ans = True
for i in range(H):
    for j in range(W):
        if mp[i][j] == '#':
            if not check(mp, i, j):
                ans = False

if ans:
    print("Yes")
else:
    print("No")