import math


def nearest_square(num: int) -> int:
    x = int(round(math.sqrt(num)))
    return x*x


print("Example:")
print(nearest_square(8))

# These "asserts" are used for self-checking
assert nearest_square(8) == 9
assert nearest_square(13) == 16

print("The mission is done! Click 'Check Solution' to earn rewards!")
