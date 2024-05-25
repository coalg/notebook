#import "@preview/ttt-exam:0.1.0": *
#import "@preview/wrap-it:0.1.0": *
#import components: frame, field, point-tag
#import "@preview/codelst:2.0.1": sourcecode
#set text(lang:"ja", font: "Harano Aji Mincho", weight: 300, size: 12pt)

#set list(indent: 2em)
#set enum(indent: 1em, numbering: "a)")

#let question(body, points: none, number: auto) = {
  grid(
    inset: (0.5em, 0em),
    columns: (1fr, auto),
    column-gutter: 0.5em,
    _question(points: points)[
      #context q-nr(style: if-auto-then(number, { if is-assignment() { "1)" } else { "1." }  }))
      #body
    ],
    if points != none {
      place(end, dx: 1cm,point-tag(points))
    }
  )
}

#show link: underline
#show raw.where(block: false): box.with(
  fill: luma(240),
  inset: (x: 3pt, y: 0pt),
  outset: (y: 3pt),
  radius: 2pt,
)

// #show raw.where(block: true): block.with(
//   fill: luma(240),
//   inset: (x: 25pt, y: 5pt),
//   radius: 4pt,
// )

= Dehnadiテスト

このテストの意図については #link("https://www.eis.mdx.ac.uk/research/PhDArea/saeed/")[Saeed Dehnadiのページ] を参照せよ。#link("http://160.16.241.20/lectures/PRE/2008-05-Dol1.pdf")[大雑把な日本語の要約はこのあたり。] ただしこの論文については「プログラミングの才能を見分けるもの」という過剰主張のため撤回されている。しかしながら、講義においてプログラミングの読解・記述において最初から一貫したモデルを頭の中に持っているかどうかで、その後の授業学習がうまくいくかすでに決定されているという内容は未だ示唆的である。下の内容はCとJavaだがPythonに翻訳している。

#assignment[
  テスト（1回目）
  #question(points: 1)[
    以下のプログラムを読み、a, bの結果として正しい答えを選択せよ。
    #sourcecode[
      ```py
      a = 10
      b = 20

      a = b
      ```
    ]

    #table(
      columns: (auto, auto, auto),
      align: horizon,
      table.header(
        [選択肢], [a], [b]
      ),
      [ ① ] , [ a = 10 ], [ b = 10 ],
      [ ② ] , [ a = 30 ], [ b = 20 ],
      [ ③ ] , [ a = 0 ], [ b = 10 ],
      [ ④ ] , [ a = 20 ], [ b = 20 ],
      [ ⑤ ] , [ a = 0 ], [ b = 30 ],
      [ ⑥ ] , [ a = 10 ], [ b = 20 ],
      [ ⑦ ] , [ a = 20 ], [ b = 10 ],
      [ ⑧ ] , [ a = 20 ], [ b = 0 ],
      [ ⑨ ] , [ a = 10 ], [ b = 30 ],
      [ ⑩ ] , [ a = 30 ], [ b = 0 ],
      [ 上記以外 ] , [ a = #h(1cm) ], [ b = #h(1cm)],
    )
  ]

  #question(points: 1)[
    以下のプログラムを読み、a, bの結果として正しい答えを選択せよ。
    #sourcecode[
      ```py
      a = 10
      b = 20

      b = a
      ```

    ]

    #table(
      columns: (auto, auto, auto),
      align: horizon,
      table.header(
        [選択肢], [a], [b]
      ),
      [ ① ] , [ a = 0 ], [ b = 30 ],
      [ ② ] , [ a = 30 ], [ b = 10 ],
      [ ③ ] , [ a = 0 ], [ b = 10 ],
      [ ④ ] , [ a = 20 ], [ b = 0 ],
      [ ⑤ ] , [ a = 20 ], [ b = 20 ],
      [ ⑥ ] , [ a = 20 ], [ b = 10 ],
      [ ⑦ ] , [ a = 30  ], [ b = 0 ],
      [ ⑧ ] , [ a = 10 ], [ b = 20 ],
      [ ⑨ ] , [ a = 10 ], [ b = 10 ],
      [ ⑩ ] , [ a = 10 ], [ b = 30 ],
      [ 上記以外 ] , [ a = #h(1cm) ], [ b = #h(1cm)],
    )
  ]

  #question(points: 1)[
    以下のプログラムを読み、big, smallの結果として正しい答えを選択せよ。
    #sourcecode[
      ```py
      big = 10
      small = 20

      big = small
      ```
    ]

    #table(
      columns: (auto, auto, auto),
      align: horizon,
      table.header(
        [選択肢], [big], [small]
      ),
      [ ① ], [ big = 30  ], [ small = 0 ],
      [ ② ], [ big = 20 ],  [ small = 0 ],
      [ ③ ], [ big = 0  ],  [ small = 30 ],
      [ ④ ], [ big = 20 ],  [ small = 10 ],
      [ ⑤ ], [ big = 10 ],  [ small = 10 ],
      [ ⑥ ], [ big = 30 ],  [ small = 20 ],
      [ ⑦ ], [ big = 20 ],  [ small = 20 ],
      [ ⑧ ], [ big = 0 ],   [ small = 10 ],
      [ ⑨ ], [ big = 10 ],  [ small = 20 ],
      [ ⑩ ], [ big = 10 ],  [ small = 30 ],
      [ 上記以外 ] , [ a = #h(1cm) ], [ b = #h(1cm)],
    )
  ]

  #question(points: 1)[
    以下のプログラムを読み、a, bの結果として正しい答えを選択せよ。
    #sourcecode[
      ```py
      a = 10
      b = 20

      a = b
      b = a
      ```
    ]

    #table(
      columns: (auto, auto, auto),
      align: horizon,
      table.header(
        [選択肢], [a], [b]
      ),
      [ ① ] , [ a = 10 ], [ b = 0 ],
      [ ② ] , [ a = 10 ], [ b = 10 ],
      [ ③ ] , [ a = 30 ], [ b = 50 ],
      [ ④ ] , [ a = 0 ],  [ b = 20 ],
      [ ⑤ ] , [ a = 40 ], [ b = 30 ],
      [ ⑥ ] , [ a = 30 ], [ b = 0 ],
      [ ⑦ ] , [ a = 20 ], [ b = 20 ],
      [ ⑧ ] , [ a = 0 ],  [ b = 30 ],
      [ ⑨ ] , [ a = 30 ], [ b = 30 ],
      [ ⑩ ] , [ a = 10 ], [ b = 20 ],
      [ ⑪ ] , [ a = 20 ], [ b = 10 ],
      [ 上記以外 ] , [ a = #h(1cm) ], [ b = #h(1cm)],
    )
  ]

  #question(points: 1)[
    以下のプログラムを読み、a, bの結果として正しい答えを選択せよ。
    #sourcecode[
      ```py
      a = 10
      b = 20

      b = a
      a = b
      ```
    ]

    #table(
      columns: (auto, auto, auto),
      align: horizon,
      table.header(
        [選択肢], [a], [b]
      ),
      [ ① ] , [ a = 30 ], [ b = 50 ],
      [ ② ] , [ a = 10 ], [ b = 10 ],
      [ ③ ] , [ a = 20 ], [ b = 20 ],
      [ ④ ] , [ a = 10 ], [ b = 0 ],
      [ ⑤ ] , [ a = 0 ],  [ b = 20 ],
      [ ⑥ ] , [ a = 30 ], [ b = 0 ],
      [ ⑦ ] , [ a = 40 ], [ b = 30 ],
      [ ⑧ ] , [ a = 0 ],  [ b = 30 ],
      [ ⑨ ] , [ a = 20 ], [ b = 10 ],
      [ ⑩ ] , [ a = 30 ], [ b = 30 ],
      [ ⑪ ] , [ a = 10 ], [ b = 20 ],
      [ 上記以外 ] , [ a = #h(1cm) ], [ b = #h(1cm)],
    )
  ]

  #question(points: 1)[
    以下のプログラムを読み、a, b, cの結果として正しい答えを選択せよ。
    #sourcecode[
      ```py
      a = 10
      b = 20
      c = 30

      a = b
      b = c
      ```
    ]

    #table(
      columns: (auto, auto, auto, auto),
      align: horizon,
      table.header(
        [選択肢], [a], [b], [c]
      ),
      [ ① ] , [ a = 30 ], [ b = 50 ], [ c = 30 ],
      [ ② ] , [ a = 60 ], [ b = 0 ],  [ c = 0 ],
      [ ③ ] , [ a = 10 ], [ b = 30 ], [ c = 40 ],
      [ ④ ] , [ a = 0 ],  [ b = 10 ], [ c = 0 ],
      [ ⑤ ] , [ a = 10 ], [ b = 10 ], [ c = 10] ,
      [ ⑥ ] , [ a = 60 ], [ b = 20 ], [ c = 30 ] ,
      [ ⑦ ] , [ a = 30 ], [ b = 50 ], [ c = 0 ] ,
      [ ⑧ ] , [ a = 20 ], [ b = 30 ], [ c = 0 ] ,
      [ ⑨ ] , [ a = 10 ], [ b = 20 ], [ c = 30 ] ,
      [ ⑩ ] , [ a = 20 ], [ b = 20 ], [ c = 20 ] ,
      [ ⑪ ] , [ a = 0 ],  [ b = 10 ], [ c = 20 ] ,
      [ ⑫ ] , [ a = 20 ], [ b = 30 ], [ c = 30 ] ,
      [ ⑬ ] , [ a = 10 ], [ b = 10 ], [ c = 20 ] ,
      [ ⑭ ] , [ a = 30 ], [ b = 30 ], [ c = 50 ] ,
      [ ⑮ ] , [ a = 0 ],  [ b = 30 ], [ c = 50 ] ,
      [ ⑯ ] , [ a = 30 ], [ b = 30 ], [ c = 30 ] ,
      [ ⑰ ] , [ a = 0 ],  [ b = 0 ], [ c = 60 ]  ,
      [ ⑱ ] , [ a = 20 ], [ b = 30 ], [ c = 20 ] ,
      [ 上記以外 ] , [ a = #h(1cm) ], [ b = #h(1cm)], [ c = #h(1cm)]
    )
  ]

  #question(points: 1)[
    以下のプログラムを読み、a, b, cの結果として正しい答えを選択せよ。
    #sourcecode[
      ```py
      a = 5
      b = 3
      c = 7

      a = c
      b = a
      c = b
      ```
    ]

    #table(
      columns: (auto, auto, auto, auto),
      align: horizon,
      table.header(
        [選択肢], [a], [b], [c]
      ),
      [ ① ] , [ a = 3 ], [ b = 5 ], [ c = 5 ],
      [ ② ] , [ a = 3 ], [ b = 3 ], [ c = 3 ],
      [ ③ ] , [ a = 12 ],[ b = 14 ],[ c = 22 ],
      [ ④ ] , [ a = 8 ], [ b = 15 ],[ c = 12 ],
      [ ⑤ ] , [ a = 7 ], [ b = 7 ], [ c = 7 ] ,
      [ ⑥ ] , [ a = 5 ], [ b = 3 ], [ c = 7 ] ,
      [ ⑦ ] , [ a = 5 ], [ b = 5 ], [ c = 5 ] ,
      [ ⑧ ] , [ a = 7 ], [ b = 5 ], [ c = 3 ] ,
      [ ⑨ ] , [ a = 3 ], [ b = 7 ], [ c = 5 ] ,
      [ ⑩ ] , [ a = 12 ],[ b = 8 ], [ c = 10 ] ,
      [ ⑪ ] , [ a = 10 ],[ b = 8 ], [ c = 12 ] ,
      [ ⑫ ] , [ a = 0 ], [ b = 0 ], [ c = 7 ] ,
      [ ⑬ ] , [ a = 0 ], [ b = 0 ], [ c = 15 ] ,
      [ ⑭ ] , [ a = 3 ], [ b = 12 ],[ c = 0 ] ,
      [ ⑮ ] , [ a = 3 ], [ b = 5 ], [ c = 7 ] ,
      [ 上記以外 ] , [ a = #h(1cm) ], [ b = #h(1cm)], [ c = #h(1cm)]
    )
  ]

  #question(points: 1)[
    以下のプログラムを読み、a, b, cの結果として正しい答えを選択せよ。
    #sourcecode[
      ```py
      a = 5
      b = 3
      c = 7

      c = b
      b = a
      a = c
      ```
    ]

    #table(
      columns: (auto, auto, auto, auto),
      align: horizon,
      table.header(
        [選択肢], [a], [b], [c]
      ),
      [ ① ] , [ a = 3 ],  [ b = 5 ],  [ c = 7 ],
      [ ② ] , [ a = 15 ], [ b = 10],  [ c = 20 ],
      [ ③ ] , [ a = 12 ], [ b = 8 ],  [ c = 10 ],
      [ ④ ] , [ a = 7 ],  [ b = 7 ],  [ c = 7 ],
      [ ⑤ ] , [ a = 3 ],  [ b = 5 ],  [ c = 3 ] ,
      [ ⑥ ] , [ a = 0 ],  [ b = 0 ],  [ c = 7 ] ,
      [ ⑦ ] , [ a = 5 ],  [ b = 3 ],  [ c = 7 ] ,
      [ ⑧ ] , [ a = 3 ],  [ b = 3 ],  [ c = 3 ] ,
      [ ⑨ ] , [ a = 7 ],  [ b = 5 ],  [ c = 3 ] ,
      [ ⑩ ] , [ a = 3 ],  [ b = 5 ],  [ c = 0 ] ,
      [ ⑪ ] , [ a = 3 ],  [ b = 7 ],  [ c = 5 ] ,
      [ ⑫ ] , [ a = 8 ],  [ b = 10 ], [ c = 12] ,
      [ ⑬ ] , [ a = 5 ],  [ b = 5 ],  [ c = 5 ] ,
      [ ⑭ ] , [ a = 15 ], [ b = 8 ],  [ c = 10 ] ,
      [ ⑮ ] , [ a = 10 ], [ b = 5],   [ c = 0 ] ,
      [ ⑯ ] , [ a = 0 ],  [ b = 0 ],  [ c = 15 ] ,
      [ 上記以外 ] , [ a = #h(1cm) ], [ b = #h(1cm)], [ c = #h(1cm)]
    )
  ]

  #question(points: 1)[
    以下のプログラムを読み、a, b, cの結果として正しい答えを選択せよ。
    #sourcecode[
      ```py
      a = 5
      b = 3
      c = 7

      c = b
      a = c
      b = a
      ```
    ]

    #table(
      columns: (auto, auto, auto, auto),
      align: horizon,
      table.header(
        [選択肢], [a], [b], [c]
      ),
      [ ① ] , [ a = 15 ], [ b = 18 ], [ c = 10 ],
      [ ② ] , [ a = 7 ],  [ b = 5 ],  [ c = 3 ],
      [ ③ ] , [ a = 7 ],  [ b = 0 ],  [ c = 5 ],
      [ ④ ] , [ a = 0 ],  [ b = 3 ],  [ c = 0 ],
      [ ⑤ ] , [ a = 10],  [ b = 0 ],  [ c = 5] ,
      [ ⑥ ] , [ a = 5 ],  [ b = 3 ],  [ c = 7 ] ,
      [ ⑦ ] , [ a = 3 ],  [ b = 3 ],  [ c = 3 ] ,
      [ ⑧ ] , [ a = 12 ], [ b = 8 ],  [ c = 10] ,
      [ ⑨ ] , [ a = 7 ],  [ b = 7 ],  [ c = 7 ] ,
      [ ⑩ ] , [ a = 15 ], [ b = 10 ], [ c = 12] ,
      [ ⑪ ] , [ a = 7 ],  [ b = 7 ],  [ c = 5 ] ,
      [ ⑫ ] , [ a = 8 ],  [ b = 10 ], [ c = 12] ,
      [ ⑬ ] , [ a = 0 ],  [ b = 15 ], [ c = 0 ] ,
      [ ⑭ ] , [ a = 7 ],  [ b = 3 ],  [ c = 5 ] ,
      [ ⑮ ] , [ a = 5 ],  [ b = 5 ],  [ c = 5 ] ,
      [ ⑯ ] , [ a = 3 ],  [ b = 7 ],  [ c = 5 ] ,
      [ 上記以外 ] , [ a = #h(1cm) ], [ b = #h(1cm)], [ c = #h(1cm)]
    )
  ]

  #question(points: 1)[
    以下のプログラムを読み、a, b, cの結果として正しい答えを選択せよ。
    #sourcecode[
      ```py
      a = 5
      b = 3
      c = 7

      b = a
      c = b
      a = c
      ```
    ]

    #table(
      columns: (auto, auto, auto, auto),
      align: horizon,
      table.header(
        [選択肢], [a], [b], [c]
      ),
      [ ① ] , [ a = 0 ], [ b = 7 ],  [ c = 3 ],
      [ ② ] , [ a = 12], [ b = 8 ],  [ c = 10],
      [ ③ ] , [ a = 15], [ b = 0 ],  [ c = 0 ],
      [ ④ ] , [ a = 0 ], [ b = 7 ],  [ c = 8 ],
      [ ⑤ ] , [ a = 3 ], [ b = 7 ],  [ c = 3 ],
      [ ⑥ ] , [ a = 5 ], [ b = 3 ],  [ c = 7 ],
      [ ⑦ ] , [ a = 3 ], [ b = 3 ],  [ c = 3 ],
      [ ⑧ ] , [ a = 7 ], [ b = 5 ],  [ c = 3 ],
      [ ⑨ ] , [ a = 20], [ b = 8 ],  [ c = 15],
      [ ⑩ ] , [ a = 3 ], [ b = 7 ],  [ c = 5 ],
      [ ⑪ ] , [ a = 5 ], [ b = 0 ],  [ c = 0 ],
      [ ⑫ ] , [ a = 8 ], [ b = 10],  [ c = 15],
      [ ⑬ ] , [ a = 5 ], [ b = 5 ],  [ c = 5 ],
      [ ⑭ ] , [ a = 8 ], [ b = 10],  [ c = 12],
      [ ⑮ ] , [ a = 5 ], [ b = 7 ],  [ c = 3 ],
      [ ⑯ ] , [ a = 7 ], [ b = 7 ],  [ c = 7 ],
      [ 上記以外 ] , [ a = #h(1cm) ], [ b = #h(1cm)], [ c = #h(1cm)]
    )
  ]

  #question(points: 1)[
    以下のプログラムを読み、a, b, cの結果として正しい答えを選択せよ。
    #sourcecode[
      ```py
      a = 5
      b = 3
      c = 7

      b = a
      a = c
      c = b
      ```
    ]

    #table(
      columns: (auto, auto, auto, auto),
      align: horizon,
      table.header(
        [選択肢], [a], [b], [c]
      ),
      [ ① ] , [ a = 8 ], [ b = 18],  [ c = 15],
      [ ② ] , [ a = 7 ], [ b = 0 ],  [ c = 8 ],
      [ ③ ] , [ a = 5 ], [ b = 5 ],  [ c = 5 ],
      [ ④ ] , [ a = 12], [ b = 8 ],  [ c = 15],
      [ ⑤ ] , [ a = 7 ], [ b = 0 ],  [ c = 5 ],
      [ ⑥ ] , [ a = 3 ], [ b = 7 ],  [ c = 5 ],
      [ ⑦ ] , [ a = 7 ], [ b = 5 ],  [ c = 3 ],
      [ ⑧ ] , [ a = 0 ], [ b = 15],  [ c = 0 ],
      [ ⑨ ] , [ a = 0 ], [ b = 3 ],  [ c = 0 ],
      [ ⑩ ] , [ a = 3 ], [ b = 3 ],  [ c = 3 ],
      [ ⑪ ] , [ a = 7 ], [ b = 7 ],  [ c = 7 ],
      [ ⑫ ] , [ a = 12], [ b = 8 ],  [ c = 10],
      [ ⑬ ] , [ a = 8 ], [ b = 10],  [ c = 12],
      [ ⑭ ] , [ a = 7 ], [ b = 5 ],  [ c = 5],
      [ ⑮ ] , [ a = 5 ], [ b = 3 ],  [ c = 7],
      [ ⑯ ] , [ a = 7 ], [ b = 3 ],  [ c = 5],
      [ 上記以外 ] , [ a = #h(1cm) ], [ b = #h(1cm)], [ c = #h(1cm)]
    )
  ]

  #question(points: 1)[
    以下のプログラムを読み、a, b, cの結果として正しい答えを選択せよ。
    #sourcecode[
      ```py
      a = 5
      b = 3
      c = 7

      a = c
      c = b
      b = a
      ```
    ]

    #table(
      columns: (auto, auto, auto, auto),
      align: horizon,
      table.header(
        [選択肢], [a], [b], [c]
      ),
      [ ① ] , [ a = 0 ], [ b = 12],  [ c = 3 ],
      [ ② ] , [ a = 5 ], [ b = 5 ],  [ c = 5 ],
      [ ③ ] , [ a = 0 ], [ b = 7 ],  [ c = 3 ],
      [ ④ ] , [ a = 8 ], [ b = 10],  [ c = 12],
      [ ⑤ ] , [ a = 15], [ b = 0 ],  [ c = 0 ],
      [ ⑥ ] , [ a = 3 ], [ b = 7 ],  [ c = 5 ],
      [ ⑦ ] , [ a = 12], [ b = 15],  [ c = 10],
      [ ⑧ ] , [ a = 5 ], [ b = 7 ],  [ c = 3 ],
      [ ⑨ ] , [ a = 3 ], [ b = 3 ],  [ c = 3 ],
      [ ⑩ ] , [ a = 7 ], [ b = 7 ],  [ c = 7 ],
      [ ⑪ ] , [ a = 12], [ b = 8 ],  [ c = 10],
      [ ⑫ ] , [ a = 5 ], [ b = 0 ],  [ c = 0 ],
      [ ⑬ ] , [ a = 5 ], [ b = 3 ],  [ c = 7 ],
      [ ⑭ ] , [ a = 7 ], [ b = 7 ],  [ c = 3 ],
      [ ⑮ ] , [ a = 20], [ b = 15],  [ c = 12],
      [ ⑯ ] , [ a = 7 ], [ b = 5 ],  [ c = 3 ],
      [ 上記以外 ] , [ a = #h(1cm) ], [ b = #h(1cm)], [ c = #h(1cm)]
    )
  ]
]

#assignment[
  *テスト（2回目抜粋）*
  #question(points: 1)[
    実用的なプログラムを作成する際に、アルゴリズムを精緻化するための初期工程で使う言語にふさわしいものはどれか。


      1. 高レベルプログラミング言語
      2. 自然言語
      3. バイトコード
      4. プログラムが実行されるマシンコード
      5. 自然言語による疑似コード
  ]

  #question(points: 1)[
    以下のプログラムの断片を考えよ。
    #sourcecode[
      ```py
      if mark > 80:
          grade = 'A'
      elif mark > 60:
          grade = 'B'
      elif mark > 40:
          grade = 'C'
      else:
          grade = 'F'
      ```
    ]

    `mark`の値が `-12` のとき、プログラムはどのような動作をするか。


      + プログラムはクラッシュ（故障）する
      + プログラムはエラーを起こす
      + `grade` の値が未定義になる
      + プログラムは停止しない
      + `grade` に `F` が設定される
  ]
]

#pagebreak()

#assignment[
  *試験*
  #question(points: 1)[
    走行距離に応じて中古車の価格を変動させるプログラムを書く。

    #table(
      columns: (auto, auto),
      align: horizon,
      table.header(
        [距離], [価格調整],
      ),
      [ 10,000km 未満 ] , [ 200を加算 ],
      [ 10,000km 以上 ] , [ 300を減算 ],
    )

    価格は `price`、距離は `kilometer` に格納されていると仮定する。上の表を参考に、`if .. else` 文で `price` を調整するプログラムを書け。
  ]

  #question(points: 1)[
    以下の文の空欄を埋めよ。

    - \[ #h(1.5cm) \] 文は、決まった回数だけ繰り返し命令を実行するために使われる。
  ]

  #question(points: 1)[
    以下のプログラムは1から4までの数を足し合わせることを意図したプログラムだが、内容が間違っている。間違っている部分を指摘し結果が10となるようにせよ。

    #sourcecode[
      ```py
      i = 1
      total = 0

      while i < 4:
          total = total + i
          i = i + 1

      print(total)
      ```
    ]

  ]

  #question(points: 1)[
    以下は数当てプログラムの一部である。このプログラムはユーザーに隠された数字を当てるよう繰り返し促す。ユーザーの推測が正しいかに応じて適切なメッセージを出力するコードを `while` ループの内部に追加せよ。

    #sourcecode[
      ```py
      HIDDEN_NUMBER = 20

      num_str = input("数を入力してください（0で終了）> ")
      guess = int(num_str)

      while guess != 0:
          # 適切なコードを以下に加える
          # ここから

          # ここまで
          num_str = input("数を入力してください（0で終了）>")
          guess = int(num_str)
      ```
    ]
  ]
]
