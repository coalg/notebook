from pyxel import *

init(160, 120, title="Pyxel Drawing")

x = 80
y = 60
body_color = 3
outline_color = 7
face_color = 0

circ(x, y, 8, body_color)
circb(x, y, 8, outline_color)
line(x - 4, y - 3, x - 4, y, face_color)
line(x + 2, y - 3, x + 2, y, face_color)
line(x - 4, y + 3, x + 2, y + 3, face_color)
pset(x - 5, y + 2, face_color)
pset(x + 3, y + 2, face_color)

show()