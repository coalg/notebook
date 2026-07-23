N = int(input())
xs = list(map(int, input().split()))

ys = list(filter(lambda x: x != -1, xs))

ks = list(set(range(1, N+1)).difference(set(ys)))
if len(set(ys)) != len(ys) and ys:
    print("No")
else:
    j = 0
    while True:
        try:
            i = xs.index(-1)
            xs[i] = ks[j]
            j+=1
        except:
            break
    print("Yes")
    print(" ".join(map(str, xs)))
