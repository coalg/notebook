def reverse_vowels(text: str) -> str:
    vowels = "aeiouAEIOU"
    vowel_chars = [char.lower() for char in text if char in vowels]
    is_vowel_upper = [char.isupper() for char in text if char in vowels]
    vowel_chars.reverse()
    vowel_index = 0
    result = []

    for char in text:
        if char in vowels:
            vowel_char = vowel_chars[vowel_index]
            is_upper = is_vowel_upper[vowel_index]
            if is_upper:
                vowel_char = vowel_char.upper()
            else:
                vowel_char = vowel_char.lower()
            result.append(vowel_char)
            vowel_index += 1
        else:
            result.append(char)

    print("".join(result))
    return "".join(result)

print("Example:")
print(reverse_vowels("Hello, World"))

# These "asserts" are used for self-checking
assert reverse_vowels("Bengt Hilgursson") == "Bongt Hulgirssen"
assert (
    reverse_vowels("Why do you laugh? I chose death.")
    == "Why da yee loigh? U chasu dooth."
)
assert (
    reverse_vowels("These are the people you protect with your pain!")
    == "Thisa uro thi peoplu yoe protect weth year peen!"
)

print("The mission is done! Click 'Check Solution' to earn rewards!")
