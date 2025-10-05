#import "@preview/tablex:0.0.9": cellx, colspanx, rowspanx, tablex

// 以下を参考にした
// https://e2103.ldblog.jp/archives/52700755.html
//
// Claude Sonnet 4.5に画像で読み込ませ叩きを生成（ident-claude-tablex.pdf）
// https://claude.ai/share/8dd8da7c-16e2-478c-9427-8779f1c09eae
//
// 手直ししたのが本ファイル（ident-claude-tablex-fixed.pdf）
// 画像はreferenceフォルダを参照

#let filename = "ident.json"
#if ("filename" in sys.inputs) {
  filename = sys.inputs.at("filename")
}
#let meta = json(filename)

#set page(
  paper: "a4",
  margin: (x: 0.8cm, y: 0.8cm),
)

#set text(
  font: "Yu Gothic",
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
        適宜お定めくださいますようお願いします。
      ]
    ]
  ],
  [
    #text(weight: "bold", size: 8.5pt)[
      （保存期間：7年）
    ]
  ],
)


#v(-0.8em)

// タイトル
#align(center)[
  #text(size: 12pt, weight: "bold")[本 人 確 認 記 録 書（記載例）]
]

#v(-0.8em)

#align(center)[
  #text(size: 7pt)[
    (犯罪収益移転防止法第6条、同法施行規則第10条第1項)
  ]
]

#v(-0.5em)

// 売主・買主セクション
#grid(
  columns: (auto, 1fr),
  align: (left, right),
  [#text(size: 11pt, weight: "bold")[売 主 ・ 買 主]],
  [#text(size: 8pt)[№. #box(width: 3cm, stroke: (bottom: 0.5pt))[#align(center)[001]]]],
)

#v(-0.8em)

// 本人確認を行った者
#tablex(
  columns: (11em, 1fr),
  auto-lines: true,
  align: left + horizon,
  inset: 6pt,

  [本人確認を行った者],
  [#text(fill: rgb("#FF6B35"), size: 10pt)[（氏名）#meta.identity_implementer]],
  [本人確認記録の作成者],
  [#text(fill: rgb("#FF6B35"), size: 10pt)[#meta.identity_creator]],
)

#v(-0.6em)

// 本人特定事項
#tablex(
  columns: (2.2em, 8.5em, 5.5em, 1fr),
  auto-lines: true,
  align: left + horizon,
  inset: 6pt,

  rowspanx(11)[本人特定事項],
  rowspanx(3)[
    個人の氏名及び住所※(国、地方公共団体の場合を含む)
  ],
  [フリガナ],
  [#text(fill: rgb("#FF6B35"))[#meta.identification.furigana]],

  (),
  (),
  [氏　名],
  [#text(fill: rgb("#FF6B35"))[#meta.identification.fullname]],

  (),
  (),
  colspanx(2)[(住所) #text(fill: rgb("#FF6B35"))[#meta.identification.address]
    #h(1fr)#text(
      fill: rgb("#FF6B35"),
    )[ （生年月日） #meta.identification.birthday]],

  (),
  rowspanx(3)[法人の名称及び本人又は法人の取締役等の氏名及び住所],
  [フリガナ],
  [],
  (),
  (),
  [名　称],
  [],

  (),
  colspanx(2)[(所在地)],
  (),
  rowspanx(3)[代理人・法人の取引担当者の氏名及び住所],
  [フリガナ],
  [],
  (),
  (),
  [名　称],
  [],
  (),
  colspanx(2)[(所在地)],
  colspanx(2)[ #text(size: 8pt)[法人・代理人取引における顧客等との関係又は国等との取引における取引者の関係]],
  [#meta.identification.relation],
  (),
  (),
  colspanx(2)[通称\
    （その理由）],
  [#meta.identification.common_name],

  (),
)


#v(-0.7em)

// 取引の種類
#tablex(
  columns: (11em, 1fr),
  auto-lines: true,
  align: left + horizon,
  inset: 6pt,

  [取引の種類],
  [#text(fill: rgb("#FF6B35"))[#meta.transaction_type]],
)

#v(-0.7em)

// 本人確認の方法
#tablex(
  columns: (2.5em, 3em, 6.5em, 1fr),
  auto-lines: true,
  align: left + horizon,
  inset: 6pt,

  rowspanx(3)[
    #text(size: 8pt)[本人確認方法\ ・本人確認書類]
  ],
  rowspanx(2)[
    来店受付
  ],
  [窓口で\
    確　認],
  [受付日時(確認日時)#h(1em)#text(fill: rgb("#FF6B35"))[#meta.identification_method.reception_datetime]\ 本人確認書類※\ （名称： #text(fill: rgb("#FF6B35"))[運転免許証　第１２３４５６７８９号]）],

  (),
  (),
  (),

  (),
  [郵送で確認],
  [受付日時(確認日時)#h(1em)#text(fill: rgb("#FF6B35"))[平成　 年　 月　 日(土)　時　分]\ 本人確認書類※\ （名称：　　　　　　　　　　　　　　　　　 ）\
    取引文書等の送付日　　　年　　月　日（　　）],
  [郵送受付],
  [],
  [受付日時(確認日時)#h(1em)#text(fill: rgb("#FF6B35"))[平成　 年　 月　 日(土)　時　分]\ 本人確認書類※\ （名称：　　　　　　　　　　　　　　　　　 ）\
    取引文書等の送付日　　　年　　月　日（　　）],
  colspanx(3)[補足書類※],
  [],
)

#v(-0.2em)

#tablex(
  columns: (auto, 1fr),
  auto-lines: true,
  inset: 6pt,
  [変更・追加事項],
)

#v(-0.4em)

// 区切り線
#line(length: 100%, stroke: (thickness: 0.5pt, dash: "dotted"))

#v(-0.5em)

// 取引記録セクション
#align(center)[
  #text(size: 11pt, weight: "bold")[(参考)#h(10em)取　引　記　録]
]

#align(center)[
  #text(size: 7pt)[
    (犯罪収益移転防止法第7条、同法施行規則第14条)
  ]
]

#v(-0.3em)

#tablex(
  columns: (auto, 1fr),
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
  ※犯罪収益移転防止法第7 条に基づく取引記録の記載事項は、宅地建物取引業法第49 条に基づく帳簿(いわゆる取引台帳)の記載事項に該当していると考えられますが、両者の記載事項には若干の差異がありますので、記載漏れのないように十分ご注意願います。
]
