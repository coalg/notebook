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

for i in range(40):
    pos = i * 4 + 1
    pyxel.line(pos, 0, pos, 119, 2)
    pyxel.line(0, pos, 159, pos, 2)

for i in range(50):
    x = pyxel.rndi(0, 159)
    y = pyxel.rndi(0, 119)
    body_color = pyxel.rndi(6, 11)
    outline_color = pyxel.rndi(12, 15)
    face_color = pyxel.rndi(0, 5)
    draw_character(x, y, body_color, outline_color, face_color)

pyxel.show()