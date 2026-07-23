def checkio(data: str) -> bool:
    morethan10 = len(data) >= 10
    contain_digit = any(c.isdigit() for c in data)
    contain_upper = any(c.isupper() for c in data)
    container_lower = any(c.islower() for c in data)

    return all([morethan10, contain_digit, contain_upper, container_lower])

print("Example:")
print(checkio("A1213pokl"))

# These "asserts" are used for self-checking
assert checkio("ULFFunH8ni") == True
assert checkio("aaaaaaaaaaaaaaaaaaaaa") == False
assert checkio("aA1") == False
assert checkio("awzbdzkfz") == False
assert checkio("RCAGOSHTTS") == False
assert checkio("6691219721") == False
assert checkio("PVlppfwrT") == False
assert checkio("45ae5lkgz") == False
assert checkio("1cmuPF1Ycz") == True
assert checkio("Pv4HdnUNb") == False
assert checkio("jRNfXg6CdM15SLChALq") == True
assert checkio("HZeLrcRR3NU5KprAybp") == True
assert checkio("aaaaaaaaaa1A") == True
assert checkio("aaaaaaaaa1Za") == True
assert checkio("aaaaaaaaa9Aa") == True
assert checkio("AAAAAAAAA1zA") == True

print("The mission is done! Click 'Check Solution' to earn rewards!")
