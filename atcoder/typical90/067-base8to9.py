import numpy as np

n, k = input().strip().split()
k = int(k)

for _ in range(k):
    x = int(n, 8)
    y = np.base_repr(x, base=9)
    n = str(y).replace("8", "5")

print(n)
