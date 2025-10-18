import pyxel

def draw_character(x, y, body_color, outline_color, face_color):
    pyxel.circ(x, y, 8, body_color)
    pyxel.circb(x, y, 8, outline_color)
    pyxel.line(x - 4, y - 3, x - 4, y, face_color)
    pyxel.line(x + 2, y - 3, x + 2, y, face_color)
    pyxel.line(x - 4, y + 3, x + 2, y + 3, face_color)
    pyxel.pset(x - 5, y + 2, face_color)
    pyxel.pset(x + 3, y + 2, face_color)

pyxel.init(160, 120, title="Pyxel Drawing")
draw_character(45, 40, 3, 7, 0)
draw_character(115, 80, 8, 15, 0)

pyxel.show()