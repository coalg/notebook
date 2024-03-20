from datetime import datetime, timedelta

def working_hours(
    date1: str, date2: str, start_time: str, end_time: str, holy: list[str]
) -> int | float:
    # your code here
    d1 = datetime.strptime(date1, "%Y-%m-%d")
    d2 = datetime.strptime(date2, "%Y-%m-%d")
    d = (d2 - d1).days + 1

    is_holy = filter(lambda x: x, [d1 <= datetime.strptime(h, '%Y-%m-%d') <= d2 for h in holy])
    num_holy = len(list(is_holy))
    delta = timedelta(days=1)

    weekend = 0
    while d1 <= d2:
        if 5 <= d1.weekday() <= 6:
            weekend += 1
        d1 += delta

    d = d - num_holy - weekend

    h1, m1 = list(map(int, start_time.split(":")))
    h2, m2 = list(map(int, end_time.split(":")))
    h, m = (h2 - h1, m2 - m1)
    h = h * d + (m * d) // 60
    m = ((m * d) % 60)/60
    return round(h + m, 2)


print("Example:")
print(working_hours("2023-03-01", "2023-03-02", "09:00", "17:00", ["2023-03-01"]))

# These "asserts" are used for self-checking
assert working_hours("2023-03-01", "2023-03-01", "09:00", "17:00", []) == 8
assert working_hours("2023-03-01", "2023-03-02", "09:00", "17:00", []) == 16
assert working_hours("2023-03-01", "2023-03-03", "09:00", "17:00", ["2023-03-01"]) == 16
assert (
    working_hours("2023-03-01", "2023-03-05", "08:45", "17:10", ["2023-03-03"]) == 16.83
)

# print("The mission is done! Click 'Check Solution' to earn rewards!")
