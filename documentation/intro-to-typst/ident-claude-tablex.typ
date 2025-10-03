#import "@preview/tablex:0.0.9": cellx, colspanx, rowspanx, tablex

#set page(
  paper: "a4",
  margin: (x: 1.5cm, y: 1.5cm),
)

#set text(
  font: "Noto Sans JP",
  size: 9pt,
  lang: "ja",
)

// ヘッダー注意書き
#grid(
  columns: (auto, 1fr, auto),
  column-gutter: 1em,
  align: (left, left, left),
  [
    #text(fill: rgb("#FF6B35"), weight: "bold", size: 8.5pt)[
      ※ 売主個人で媒介業\
      #h(1em)者が作成の場合
    ]
  ],
  [
    #rect(
      width: 100%,
      inset: 8pt,
      stroke: 0.5pt,
    )[
      #text(size: 7.5pt)[
        ※ あくまでも記載の一例ですので、本人確認にあたっては\
        #h(1em)適宜お定めくださいますようお願いします。
      ]
    ]
  ],
  [
    #text(weight: "bold", size: 8.5pt)[
      （保存期間：7年）
    ]
  ],
)


#v(0.5em)

// タイトル
#align(center)[
  #text(size: 12pt, weight: "bold")[本 人 確 認 記 録 書（記載例）]
]

#align(center)[
  #text(size: 7pt)[
    (犯罪収益移転防止法第6条、同法施行規則第10条第1項)
  ]
]

#v(0.5em)

// 売主・買主セクション
#grid(
  columns: (auto, 1fr),
  align: (left, right),
  [#text(size: 11pt, weight: "bold")[売 主 ・ 買 主]],
  [#text(size: 8pt)[№. #box(width: 3cm, stroke: (bottom: 0.5pt))[#align(center)[001]]]],
)

#v(0.3em)

// 本人確認を行った者
#tablex(
  columns: (11em, auto, 1fr),
  auto-lines: true,
  align: left + horizon,
  inset: 6pt,

  [本人確認を行った者],
  [(氏名)],
  [#text(fill: rgb("#FF6B35"), size: 10pt)[全宅　太郎]],
)

#v(0.2em)

#tablex(
  columns: (11em, auto, 1fr),
  auto-lines: true,
  align: left + horizon,
  inset: 6pt,

  [本人確認記録の作成者],
  [(氏名)],
  [#text(fill: rgb("#FF6B35"), size: 10pt)[全宅　太郎]],
)

#v(0.2em)

// 本人特定事項
#tablex(
  columns: (2.5em, 8.5em, 3.5em, 1fr),
  auto-lines: true,
  align: left + horizon,
  inset: 6pt,

  rowspanx(9)[本\ 人\ 特\ 定\ 事\ 項],
  rowspanx(3)[
    個人の氏名及\
    び住所又は\
    (個、法人全体\
    の場合を含む)
  ],
  [フリガナ],
  [#text(fill: rgb("#FF6B35"))[ゼンタク　イチロウ]],

  (),
  (),
  [氏　名],
  [#text(fill: rgb("#FF6B35"))[甲野]],

  (),
  (),
  [(住　所)],
  [#text(fill: rgb("#FF6B35"))[東京都千代田区桜丘〇丁目〇番〇号]
    #h(1fr)#text(
      fill: rgb("#FF6B35"),
    )[0年1月1日]],

  (),
  [法人の名称及び本\
    人又は法人の取\
    締役等の氏名及び住所],
  [フリガナ],
  [],

  (),
  (),
  [名　称],
  [],

  (),
  [席の所在地処\
    　(所在地)],
  [(所在地)],
  [],

  (),
  [代理人・法人の取\
    引担当者の氏名],
  [フリガナ],
  [],

  (),
  (),
  [氏　名],
  [#h(15em)],

  (),
  [及び住所等],
  [(住　所)],
  [],
)

#v(0.2em)

#tablex(
  columns: 1,
  auto-lines: true,
  inset: 6pt,

  [法人・代理人取引における顧客との関係等又は同等等との取\
    引における取引者の関係(エの理由)],
)

#v(0.2em)

// 取引の種類
#tablex(
  columns: (11em, 1fr),
  auto-lines: true,
  align: left + horizon,
  inset: 6pt,

  [取引の種類],
  [#text(fill: rgb("#FF6B35"))[売買の媒介]],
)

#v(0.2em)

// 本人確認の方法
#tablex(
  columns: (2.5em, 3em, 3.5em, 1fr),
  auto-lines: true,
  align: left + horizon,
  inset: 6pt,

  rowspanx(8)[
    本\ 人\ 確\ 認\ を\ 行\ っ\ た\ 本\ 人\ 確\ 認\ 書\ 類
  ],
  rowspanx(2)[
    本\ 人\ 確\ 認\ 書\ 類
  ],
  [窓口で\
    確　認],
  [受付日時(確認日時)#h(1em)#text(fill: rgb("#FF6B35"))[平成20年　3月　1日(土)　12時00分]],

  (),
  (),
  [本人確認書類等\
    (名称：],
  [#text(fill: rgb("#FF6B35"))[運転免許証　第1234567890号]],

  (),
  rowspanx(3)[
    転\ 送\ 不\ 要\ 郵\ 便\ 等
  ],
  [郵送で\
    確　認],
  [受付日#h(8em)年#h(2em)月#h(2em)日(　　)],

  (),
  (),
  [本人確認書類等\
    (名称：],
  [],

  (),
  (),
  [取引文書等の送付日#h(4em)年#h(2em)月#h(2em)日(　　)],

  (),
  rowspanx(3)[
    転\ 送\ 不\ 要\ 郵\ 便\ 等
  ],
  [郵送受付日],
  [#h(8em)年#h(2em)月#h(2em)日(　　)],

  (),
  (),
  [本人確認書類等\
    (名称：],
  [],

  (),
  (),
  [取引文書等の送付日#h(4em)年#h(2em)月#h(2em)日(　　)],
)

#v(0.2em)

#tablex(
  columns: 1,
  auto-lines: true,
  inset: 6pt,

  [補足事項等],
)

#v(0.2em)

#tablex(
  columns: 1,
  auto-lines: true,
  inset: 6pt,

  [変更・追加事項],
)

#v(1em)

// 区切り線
#line(length: 100%, stroke: (thickness: 0.5pt, dash: "dotted"))

#v(0.5em)

// 取引記録セクション
#align(center)[
  #text(size: 11pt, weight: "bold")[(参考)#h(10em)取　引　記　録]
]

#align(center)[
  #text(size: 7pt)[
    (犯罪収益移転防止法第7条、同法施行規則第14条)
  ]
]

#v(0.3em)

#tablex(
  columns: (11em, 1fr),
  auto-lines: true,
  align: left + horizon,
  inset: 6pt,

  [本人確認記録の通し番号等],
  [#text(fill: rgb("#FF6B35"))[001号]],
  [取引の年月日],
  [#text(fill: rgb("#FF6B35"))[平成2年#h(2em)3月#h(2em)1日]],
  [取引の種類(取引形態)],
  [#text(fill: rgb("#FF6B35"))[売買の媒介]],
  [取引に係る財産の価額],
  [#text(fill: rgb("#FF6B35"))[50,000,000円]],
  [財産の移転元又は移転先の名義],
  [#text(fill: rgb("#FF6B35"))[乙野　次郎]],
)

#v(0.5em)

#text(size: 7pt)[
  ※犯罪収益移転防止法第7 条に基づく取引記録の記載事項は、宅地建物取引業法第49 条に基づく帳簿(いわゆる取引台帳)の記載事項該当している\
  と考えられますが、両者の記載事項には若干の差異がありますので、記載漏れのないように十分ご注意願います。
]
