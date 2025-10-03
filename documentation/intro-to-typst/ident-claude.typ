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
  columns: (auto, 1fr),
  column-gutter: 1em,
  align: (left, left),
  [
    #text(fill: rgb("#FF6B35"), weight: "bold")[
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
      #text(size: 8pt)[
        ※ あくまでも記載の一例ですので、本人確認にあたっては\
        #h(1em)適宜お定めください。まさまなお願いします。
      ]
    ]
  ],
)

#align(right)[
  #text(size: 8pt)[(保存期間:7年)]
]

#v(0.5em)

// タイトル
#align(center)[
  #text(size: 16pt, weight: "bold")[本 人 確 認 記 録 書(顧客)]
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
  [#text(size: 11pt, weight: "bold")[売 主 ・ 買 主]], [#text(size: 8pt)[№. #underline[#h(1cm) 001 #h(1cm)]]],
)

#v(0.3em)

// 本人確認を行った者
#table(
  columns: (12em, auto, 1fr),
  stroke: 0.5pt,
  inset: 6pt,
  align: (left, left, left),

  [本人確認を行った者], [(氏名)], [#text(fill: rgb("#FF6B35"), size: 11pt)[全宅 太郎]],
)

#v(0.2em)

#table(
  columns: (12em, auto, 1fr),
  stroke: 0.5pt,
  inset: 6pt,
  align: (left, left, left),

  [本人確認記録の作成者], [(氏名)], [#text(fill: rgb("#FF6B35"), size: 11pt)[全宅 太郎]],
)

#v(0.2em)

// 本人特定事項
#table(
  columns: (2.5em, 9.5em, auto, 1fr),
  stroke: 0.5pt,
  inset: 6pt,
  align: (center, left, left, left),

  table.cell(rowspan: 9)[本\ 人\ 特\ 定\ 事\ 項],
  [個人の氏名及び住所又は本人の\ 生年月(個、法人の名称及び本人住所含む)],
  [フリガナ],
  [#text(fill: rgb("#FF6B35"))[ゼンタク イチロウ]],

  [], [],
  [氏 名],
  [#text(fill: rgb("#FF6B35"))[甲野]],

  [], [],
  [(住 所)],
  [#text(fill: rgb("#FF6B35"))[東京都千代田区桜丘〇丁目〇番〇号] #h(1fr) (生年月日) #text(fill: rgb("#FF6B35"))[0 年 1 月 1 日]],

  [],
  [法人の名称及び本人居住又は本人居住所又は本人の住所の所在地],
  [フリガナ],
  [],

  [], [],
  [名 称],
  [],

  [], [席の所在地又は(所在地)],
  [(所在地)],
  [],

  [],
  [代理人・法人の場合引取担当者の氏名],
  [フリガナ],
  [],

  [], [],
  [氏 名],
  [#h(20em) (生年月日)],

  [],
  [及び住所等],
  [(住 所)],
  [],
)

#v(0.2em)

#table(
  columns: 1,
  stroke: 0.5pt,
  inset: 6pt,

  [法人・代理人取引における顧客との関係又は同席等との関係若しくは取引における取引等の関係(エの理由)],
)

#v(0.2em)

// 取引の種類
#table(
  columns: (12em, 1fr),
  stroke: 0.5pt,
  inset: 6pt,
  align: (left, left),

  [取引の種類], [#text(fill: rgb("#FF6B35"))[売買の媒介]],
)

#v(0.2em)

// 本人確認の方法
#table(
  columns: (2.5em, 3em, 3em, 1fr),
  stroke: 0.5pt,
  inset: 6pt,
  align: (center, center, center, left),

  table.cell(rowspan: 5)[
    本\ 人\ 確\ 認\ を\ 行\ っ\ た\ 本\ 人\ 確\ 認\ 書\ 類
  ],
  table.cell(rowspan: 2)[
    本\ 人\ 確\ 認\ 書\ 類
  ],
  [意思で\ 確 認],
  [受付日時(確認日時)#h(2em) #text(fill: rgb("#FF6B35"))[平成20年 3月 1日(土) 12時00分]],

  [], [],
  [本人確認書類等\ (名称: #text(fill: rgb("#FF6B35"))[運転免許証 第1234567890号])],

  [],
  table.cell(rowspan: 3)[
    転\ 送\ 不\ 要\ 郵\ 便\ 等
  ],
  [郵送で\ 確 認],
  [受付日#h(10em) 年#h(2em) 月#h(2em) 日(#h(2em))],

  [], [],
  [本人確認書類等\ (名称:],

  [], [],
  [取引文書等の送付日#h(5em) 年#h(2em) 月#h(2em) 日(#h(2em))],

  [], [],
  [郵送受付日#h(8em) 年#h(2em) 月#h(2em) 日(#h(2em))],

  [], [],
  [本人確認書類等\ (名称:],

  [], [],
  [取引文書等の送付日#h(5em) 年#h(2em) 月#h(2em) 日(#h(2em))],
)

#v(0.2em)

#table(
  columns: 1,
  stroke: 0.5pt,
  inset: 6pt,

  [補足事項等],
)

#v(0.2em)

#table(
  columns: 1,
  stroke: 0.5pt,
  inset: 6pt,

  [変更・追加事項],
)

#v(1em)

// 区切り線
#line(length: 100%, stroke: (thickness: 0.5pt, dash: "dotted"))

#v(0.5em)

// 取引記録セクション
#align(center)[
  #text(size: 11pt, weight: "bold")[(参考)#h(8em) 取 引 記 録]
]

#align(center)[
  #text(size: 7pt)[
    (犯罪収益移転防止法第7条、同法施行規則第14条)
  ]
]

#v(0.3em)

#table(
  columns: (12em, 1fr),
  stroke: 0.5pt,
  inset: 6pt,
  align: (left, left),

  [本人確認記録の通し番号等], [#text(fill: rgb("#FF6B35"))[001 号]],
  [取引の年月日], [#text(fill: rgb("#FF6B35"))[平成2年#h(2em) 3月#h(2em) 1日]],
  [取引の種類(取引形態)], [#text(fill: rgb("#FF6B35"))[売買の媒介]],
  [取引に係る財産の価額], [#text(fill: rgb("#FF6B35"))[50,000,000円]],
  [財産の移転元又は移転先の名義], [#text(fill: rgb("#FF6B35"))[乙野 次郎]],
)

#v(0.5em)

#text(size: 7pt)[
  ※犯罪収益移転防止法第7 条に基づく取引記録の記載事項は、宅地建物取引業法第49 条に基づく帳簿(いわゆる取引台帳)の記載事項該当しているものと考えられますが、両者の記載事項には若干の差異がありますので、記載漏れのないように十分ご注意願います。
]
