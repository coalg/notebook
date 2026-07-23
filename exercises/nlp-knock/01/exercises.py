import itertools

def main():
    print("stressed"[::-1])
    print("パタトクカシー"[::2])
    print("".join(itertools.chain(*zip("パトカー", "タクシー"))))
    s = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."
    print(list(map(len, s.replace(",", "").replace(".", "").split(" "))))

main()
