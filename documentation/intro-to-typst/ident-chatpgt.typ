#import "@preview/tablex:0.0.9": colspanx, rowspanx, tablex
#set page(width: 210mm, height: 297mm, margin: 15mm)
#set text(10pt)

#align(center)[
  *本人確認記録（記載例）*
]

#v(3mm)

#tablex(
  columns: (1fr, 3fr),
  [
    本人確認を行った者,
    全宅 太郎
  ],
  [
    本人確認記録の作成者,
    全宅 太郎
  ],
)

#v(3mm)

#tablex(
  columns: (2fr, 3fr, 3fr, 3fr),
  [
    個人の氏名及び住所等
    （法人の場合は名称及び所在地）
    ,
    フリガナ コウノ イチロウ
    ,
    氏名 甲野 一郎 （生年月日 平成30年1月1日）
    ,
    住所 東京都千代田区桜丘○丁目○番○号
  ],
)

#v(3mm)

#tablex(
  columns: (1fr, 5fr),
  [
    本人特定事項,
    （運転免許証等の種類、番号、有効期限等を記載）
  ],
)

#v(3mm)

#tablex(
  columns: (1fr, 5fr),
  [
    取引の種類,
    売買の媒介
  ],
)

#v(3mm)

#tablex(
  columns: (2fr, 5fr),
  [
    本人確認方法,
    窓口で提示
    案件日時：平成20年3月1日（土）12時00分
    確認書類：運転免許証 第123456789000号
  ],
)

#v(5mm)

#tablex(
  columns: (2fr, 4fr),
  [
    参考（取引記録）,
    本人確認記録の通し番号: 001号
    取引の年月日: 平成20年3月1日
    取引の種類: 売買の媒介
    取引金額: 50,000,000円
    財産の種類又は取引対象物件の名称: 乙甲 次郎
  ],
)
