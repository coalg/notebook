def friendly_number(number: int, options: dict) -> str:
    # your code here
    suffix = ["", "k", "M", "G", "T", "P", "E", "Z", "Y"]
    nums = f"{number:,}".split(",")
    i = len(nums) - 1
    j = options["decimals"]

    out = f"{nums[0]}{suffix[i]}"

    print(out)
    return out


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
