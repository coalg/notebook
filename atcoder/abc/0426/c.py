import heapq
N, Q = map(int, input().split())

hq = [(i, 1) for i in range(1, N+1)]
heapq.heapify(hq)

for _ in range(Q):
    x, y = map(int, input().split())

    count = 0
    while hq and hq[0][0] <= x:
        count += heapq.heappop(hq)[1]
    heapq.heappush(hq, (y, count))
    print(count)