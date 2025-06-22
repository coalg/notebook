n = int(input())

def not_fizzbuzz(n):
    if n % 3 == 0:
        return False
    elif n % 5 == 0:
        return False
    return not(n % 3 == 0 and n % 5 == 0)

print(sum(i for i in range(1, n + 1) if not_fizzbuzz(i)))
