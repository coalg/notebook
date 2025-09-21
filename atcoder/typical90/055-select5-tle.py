from itertools import combinations

def main():
    _, P, Q = map(int, input().split())
    
    xs = map(int, input().split())
    
    ans = 0
    for a, b, c, d, e in combinations(xs, 5):
        if a % P * b % P * c % P * d % P * e % P == Q:
            ans += 1
    
    print(ans)

main()