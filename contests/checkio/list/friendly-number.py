import math


def friendly_number(number: int, options: dict) -> str:
    base = options.get("base", 1000)
    decimals = options.get("decimals", 0)
    suffix = options.get("suffix", "")
    powers = options.get("powers", ["", "k", "M", "G", "T", "P", "E", "Z", "Y"])

    # Handle zero case
    if number == 0:
        return f"0{suffix}"

    # Determine the power index based on the base
    abs_number = abs(number)
    power_index = 0
    while abs_number >= base:
        abs_number /= base
        power_index += 1

    # Cap the power index to the maximum available power
    power_index = min(power_index, len(powers) - 1)

    # Round the number based on the specified decimals
    if decimals == 0:
        rounded_number = round(abs_number)
    else:
        rounded_number = round(abs_number, decimals)

    # Format the result with the power symbol and suffix
    result = f"{rounded_number:.{decimals}f}{powers[power_index]}{suffix}"

    # Handle negative numbers
    if number < 0:
        result = "-" + result

    return result


print("Example:")
print(friendly_number(102, {}))

# These "asserts" are used for self-checking
# assert friendly_number(102, {}) == "102"
assert friendly_number(12341234, {"decimals": 1}) == "12.3M"
assert friendly_number(12000000, {"decimals": 3}) == "12.000M"
assert friendly_number(102, {"decimals": 2}) == "102.00"
assert friendly_number(10240, {}) == "10k"
assert friendly_number(1024000000, {"base": 1024, "suffix": "iB"}) == "976MiB"
assert friendly_number(-150, {"base": 100, "powers": ["", "d", "D"]}) == "-1d"
assert (
    friendly_number(-155, {"base": 100, "decimals": 1, "powers": ["", "d", "D"]})
    == "-1.6d"
)
assert friendly_number(255000000000, {"powers": ["", "k", "M"]}) == "255000M"

print("The mission is done! Click 'Check Solution' to earn rewards!")
