#import "@preview/tablex:0.0.8": tablex, colspanx, rowspanx

#set par(justify: true)

#let meta = yaml("hello.yaml")

#align(center, text(17pt)[ *#meta.title* ])

#set align(left)
#text(15pt)[ #meta.company ]

#text(11pt)[ #meta.department ]

#text(11pt)[ #meta.payer 様 ]

#set align(right)
#meta.addres

請求日: #meta.charge-date

#let sum = 0

#set align(left)

= 詳細

#tablex(
  columns: (auto, auto, 1fr, auto),  // 4 columns
  rows: auto,  // at least 1 row of auto size
  header-row: red,
  align: center + horizon,
  stroke: black,
  auto-vlines: false,
  [*番号*], [*注文日*], [*品目*], [*価格*],
  ..for charge in meta.charges {
    (charge.at("no"), charge.at("date"), charge.at("description"), "￥" + str(charge.at("price")))
    sum += charge.at("price")
  }
)

#set align(right)

#tablex(
  columns: (auto, 50pt),
  align: center + horizon,
  auto-vlines: false,
  [小計], "￥" + str(sum),
  [消費税], "￥" + str(sum * 0.08),
  [総計], "￥" + str(calc.floor(sum * 1.08))
)
