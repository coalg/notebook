N = int(input())

hs = []
bs = []

hw = 0
bw = 0
for i in range(N):
    w, h, b = tuple(map(int, input().split()))

    r = (h - b) / w

    if h <= b:
        bs.append((w, h, b, r))
        bw += w
    else:
        hs.append((w, h, b, r))
        hw += w

hs = sorted(hs, key=lambda x: x[3])

while hw >= bw:
    (w, h, b, r) = hs.pop(0)

    hw -= w
    bw += w
    bs.append((w, h, b, r))

print(hs)
print(bs)

ans = sum(h for (_, h, _, _) in hs) + sum(b for (_, _, b, _) in bs)
print(ans)