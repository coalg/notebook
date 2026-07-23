from collections import deque

def color_map(region):
    n = max(max(row) for row in region) + 1  # Number of countries
    graph = [[] for _ in range(n)]  # Adjacency list

    # Build the adjacency list
    for i in range(len(region)):
        for j in range(len(region[0])):
            country = region[i][j]
            for di, dj in [(0, 1), (0, -1), (1, 0), (-1, 0)]:
                ni, nj = i + di, j + dj
                if 0 <= ni < len(region) and 0 <= nj < len(region[0]) and region[ni][nj] != country:
                    graph[country].append(region[ni][nj])

    colors = {}  # Dictionary to store the color assignments

    def is_valid_color(country, color):
        return all(colors.get(neighbor, color) != color for neighbor in graph[country])

    def color_country(country, color):
        colors[country] = color
        queue = deque([country])
        while queue:
            curr = queue.popleft()
            for neighbor in graph[curr]:
                if neighbor not in colors:
                    queue.append(neighbor)

    for country in range(n):
        if country not in colors:
            for color in range(1, 5):
                if is_valid_color(country, color):
                    color_country(country, color)
                    break


    print(colors)
    # return [colors[i] for i in range(n)]


if __name__ == "__main__":
    # These "asserts" using only for self-checking and not necessary for auto-testing
    NEIGHS = ((-1, 0), (1, 0), (0, 1), (0, -1))
    COLORS = (1, 2, 3, 4)
    ERROR_NOT_FOUND = "Didn't find a color for the country {}"
    ERROR_WRONG_COLOR = "I don't know about the color {}"

    def checker(func, region):
        user_result = func(region)
        if not isinstance(user_result, (tuple, list)):
            print("The result must be a tuple or a list")
            return False
        country_set = set()
        for i, row in enumerate(region):
            for j, cell in enumerate(row):
                country_set.add(cell)
                neighbours = []
                if j < len(row) - 1:
                    neighbours.append(region[i][j + 1])
                if i < len(region) - 1:
                    neighbours.append(region[i + 1][j])
                try:
                    cell_color = user_result[cell]
                except IndexError:
                    print(ERROR_NOT_FOUND.format(cell))
                    return False
                if cell_color not in COLORS:
                    print(ERROR_WRONG_COLOR.format(cell_color))
                    return False
                for n in neighbours:
                    try:
                        n_color = user_result[n]
                    except IndexError:
                        print(ERROR_NOT_FOUND.format(n))
                        return False
                    if cell != n and cell_color == n_color:
                        print("Same color neighbours.")
                        return False
        if len(country_set) != len(user_result):
            print("Excess colors in the result")
            return False
        return True

    assert checker(
        color_map,
        (
            (0, 0, 0),
            (0, 1, 1),
            (0, 0, 2),
        ),
    ), "Small"
    assert checker(
        color_map,
        (
            (0, 0, 2, 3),
            (0, 1, 2, 3),
            (0, 1, 1, 3),
            (0, 0, 0, 0),
        ),
    ), "4X4"
    assert checker(
        color_map,
        (
            (1, 1, 1, 2, 1, 1),
            (1, 1, 1, 1, 1, 1),
            (1, 1, 0, 1, 1, 1),
            (1, 0, 0, 0, 1, 1),
            (1, 1, 0, 4, 3, 1),
            (1, 1, 1, 3, 3, 3),
            (1, 1, 1, 1, 3, 5),
        ),
    ), "6 pack"
