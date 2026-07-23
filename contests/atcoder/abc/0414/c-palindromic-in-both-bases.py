def is_palindrome(s):
    return s == s[::-1]

def to_base(n, base):
    digits = []
    while n > 0:
        digits.append(str(n % base))
        n //= base
    return ''.join(reversed(digits))

def main():
    A = int(input())
    N = input()
    L = len(N)
    N = int(N)

    ps = [i for i in range(1, 10)]
    
    for d in range(2, L + 1):
        h = (d + 1) // 2
        s = 10 ** (h - 1)
        e = 10 ** h

        for i in range(s, e):
            s = str(i)
            if d % 2 == 0:
                p = s + s[::-1]
            else:
                p = s + s[-2::-1]
            ps.append(int(p))
    total = 0
    for p in ps:
        if p > N:
            break
        if is_palindrome(to_base(p, A)):
            total += p
    print(total)

main()