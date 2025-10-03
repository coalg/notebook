#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2cm),
)

#set text(
  font: "Noto Sans JP",
  size: 10pt,
  lang: "ja",
)

// ヘッダー部分
#grid(
  columns: (1fr, auto, 1fr),
  align: (left, center, right),
  [
    〒002-0807 \
    静岡県浜松市中区〇〇2-24-1 \
    株式会社まるっと帳票 \
    〇△×ビル \
    システム統括部 情報システム課 \
    佐々木 一郎 様
  ],
  [
    #text(size: 18pt, weight: "bold")[請求書]
  ],
  [
    No. 1429000001 \
    2025/02/03 \
    // #image.decode(
    //   width: 3cm,
    //   read("/placeholder-logo.svg").replace(
    //     "<svg",
    //     "<svg xmlns='http://www.w3.org/2000/svg'",
    //   ),
    // ) \
    株式会社ユニリタ
  ],
)

#v(1em)

// 住所情報
#align(right)[
  〒108-6029 \
  東京都港区港南二丁目15番1号 \
  お支払いは、下記口座にお振込み下さい。
]

#v(0.5em)

#rect(
  width: 100%,
  inset: 8pt,
  stroke: 0.5pt,
)[
  三菱UFJ銀行京橋中央支店普通 \
  101010のユニリタ
]

#v(1em)

// お客様コードと支払期日
#grid(
  columns: (auto, auto),
  column-gutter: 2cm,
  [
    #table(
      columns: 2,
      stroke: 0.5pt,
      [お客様コード], [お支払期日],
      [00001], [2025/03/31],
    )
  ],
  [],
)

#v(1em)

#v(0.5em)

#table(
  columns: (auto, 1fr, auto),
  stroke: 0.5pt,
  align: (left, left, right),
  [税抜金額], [45,000円], [],
  [消費税(10%)], [], [4,500円],
)

#v(1em)

// 担当者情報
#grid(
  columns: (auto, 1fr),
  column-gutter: 1em,
  [担当営業：まるっと 帳票], [E-Mail: seikyu\@unirita.co.jp],
  [電話番号：T1234567890123], [],
)

#v(0.5em)

#text(size: 8pt)[
  左記金額をご請求申し上げます。当該金額には消費税額が含まれております。
]

#v(1em)

// 明細表
#table(
  columns: (auto, 3fr, 1.5fr, auto, auto),
  stroke: 0.5pt,
  align: (center, left, left, center, right),

  // ヘッダー
  table.header([契約番号], [御 請 求 内 訳], [契 約 種 別], [区 分\ (内税/外税)], [金 額]),

  // データ行
  [20K0001],
  [
    まるっとクラウドサービス \
    2025/02/01〜2025/02/28(8/10) \
    閉鎖日自選択日1 \
    閉鎖日自選択日3 \
    閉鎖日自選択日4
  ],
  [年間使用料(クラウド型) \
    閉鎖日申項目3 \
    閉鎖日申項目4],
  [外税],
  [45,000円],

  // 空行
  ..range(12).map(_ => ([], [], [], [], [])).flatten(),
)

#v(1fr)

#align(center)[
  1/1
]
