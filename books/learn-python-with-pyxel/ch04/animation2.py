import pyxel

def draw_rabbit(x, y, color):
    pyxel.line(x + 2, y, x + 2, y + 2, color)
    pyxel.line(x + 4, y, x + 4, y + 4, color)
    pyxel.rect(x + 2, y + 3, 4, 3, color)
    pyxel.rect(x + 1, y + 6, 4, 3, color)
    pyxel.line(x, y + 9, x + 2, y + 9, color)
    pyxel.line(x + 4, y, x + 5, y + 9, color)
    pyxel.pset(x + 3, y + 4, pyxel.COLOR_RED)
    pyxel.pset(x + 5, y + 4, pyxel.COLOR_RED)

pyxel.init(80, 60, title="Pyxel Animation")

rabbit_x = 0
rabbit_y = 25
rabbit_vx = 0
rabbit_height =10
rabbit_color = 15

while True:
    rabbit_x += rabbit_vx
    rabbit_vx += 0.1

    if rabbit_x >= pyxel.width:
        rabbit_x = -6
        rabbit_vx = 0

    pyxel.cls(1)
    draw_rabbit(rabbit_x, rabbit_y, rabbit_color)
    pyxel.flip()