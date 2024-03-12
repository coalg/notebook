#import "@preview/tablex:0.0.8": tablex, colspanx, rowspanx

#set par(justify: true)

#let title = [ 御請求書 ]
#let company = [ サンプル株式会社 ]
#let department = [ 企画部 ]
#let payer = [ 山田 一郎 ]

#align(center, text(17pt)[ *#title* ])

#align(left,
text(15pt)[
  #company 御中
]
)

#align(left,
text(11pt)[ #department ]
)

#align(left,
text(11pt)[ #payer 様 ]
)

= 詳細

#tablex(
  columns: (auto, auto, 1fr, 1fr),  // 4 columns
  rows: auto,  // at least 1 row of auto size
  header-row: red,
  align: center + horizon,
  stroke: black,
  auto-vlines: false,
  [*Username*], [*Data*], [AA], [*Score*],
  [a], [b], [c], [d],
  [e], [f], [g], [h],
  [i], [j], [k], [l]
)
