import pegtree as pg

peg = pg.grammar('math.tpeg')

parser = pg.generate(peg)

tree = parser('1+2*3')

print(repr(tree))
