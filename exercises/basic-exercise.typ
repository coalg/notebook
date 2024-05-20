#import "@preview/ttt-exam:0.1.0": *
#import "@preview/wrap-it:0.1.0": *
#import components: frame, field, point-tag
#import "@preview/codelst:2.0.1": sourcecode
#set text(lang:"ja", font: "Harano Aji Mincho", weight: 300, size: 12pt)

#set list(indent: 2em)

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

= 1. プログラミング基礎

#assignment[
  *（基本文法の確認）* 以下のプログラムを作成せよ。

  #question(points: 1)[
    *（変数の定義）* 始点、終点、そして到達するまでの経過時間を元に速度を計算するプログラムを作れ。
    #sourcecode[
      ```py
      def speed(start: int, end: int, time_elapsed: int) -> int:
          # TODO: 以下に`distance` 変数を定義して正しい値を計算せよ。


          # 以下の行は変更しないこと
          return distance // time_elapsed

      assert speed(10, 30, 10) == 2
      assert speed(10, 30, 2) == 15
      assert speed(10, 31, 10) == 2
      ```
    ]
  ]

  #question(points: 1)[
    *（分岐）* 奇数を判定するプログラムを書け。
    #sourcecode[
      ```py
      def is_odd(n: int) -> bool:
          pass

      assert is_odd(1) == True
      assert is_odd(2) == False
      assert is_odd(101) == True
      ```
    ]
  ]

  #question(points: 2)[
    *（エラー処理）* 前々問の速度を計算するプログラムについて、経過時間が 0 の場合エラー処理を行え。必要に応じてエラー処理、ゼロ除算について調べよ。

    #sourcecode[
      ```py
      def speed(start: int, end: int, time_elapsed: int) -> int:
          # TODO
          pass

      assert speed(10, 30, 0) == "Zero division error"
      assert speed(10, 30, 10) == 2
      assert speed(10, 30, 2) == 15
      assert speed(10, 31, 10) == 2
      ```
    ]
  ]

  #question(points: 2)[
    *（再帰）（基本情報技術者試験 サンプル問題 改題）* 非負整数 `n` を引数に取り、階乗を計算する関数 `fact` の正しいプログラムを作れ。実装には再帰を使え。
    #sourcecode[
      ```py
      def fact(n: int) -> int:
          pass

      assert fact(0) == 1
      assert fact(1) == 1
      assert fact(2) == 2
      assert fact(5) == 120
      ```
    ]
  ]

  #question(points: 1)[
    *（`while`）* 非負整数 `n` を引数に取り、階乗を計算する関数 `fact` の正しいプログラムを作れ。実装には `while` を使え。
    #sourcecode[
      ```py
      def fact(n: int) -> int:
          pass

      assert fact(0) == 1
      assert fact(1) == 1
      assert fact(2) == 2
      assert fact(5) == 120
      ```
    ]
  ]

  #question(points: 1)[
    *（`for`）* 非負整数 `n` を引数に取り、階乗を計算する関数 `fact` の正しいプログラムを作れ。実装には `for` を使え。
    #sourcecode[
      ```py
      def fact(n: int) -> int:
          pass

      assert fact(0) == 1
      assert fact(1) == 1
      assert fact(2) == 2
      assert fact(5) == 120
      ```
    ]
  ]
]

#assignment[
  *（変数と関数）* BMI（Body Mass Index）は体重と身長から算出される、肥満度を表す体格指標である。計算式は以下の通りである。

    $ "BMI" = "体重（kg）" / "身長（m）"^2 $

  #question(points: 1)[
    身長と体重を表す変数を各々用意して、BMIを計算してみよ。
  ]

  #question(points: 1)[
    BMIを計算する関数を設計せよ。
  ]

  #question(points: 1)[
    関数が正しく計算されていることを確認するための `assert` 文を書け。以降のプログラム作成問題でも特に指示がない限り `assert` でプログラムの動作チェックを行うことをおすすめする。
  ]

  #question(points: 2)[
    #link("https://ja.wikipedia.org/wiki/%E3%83%9C%E3%83%87%E3%82%A3%E3%83%9E%E3%82%B9%E6%8C%87%E6%95%B0")[
      WikipediaのBMIの項
    ]
    を参考に、体重と身長を入力値として、状態を出力するプログラムを作成せよ。
  ]

  #question(points: 2)[
    BMI計算の入力値について何か注意する点はあるか。気付いた点について意見を述べよ。
  ]
]


#pagebreak()

#assignment[
  *（プログラムの読解）* 以下にプログラムを挙げる。問に回答せよ。

  #question(points: 1)[
    以下は `Hello, World` を出力することを意図した1行のプログラムである。バグを指摘し修正せよ。
    #sourcecode[
    ```python
    print(Hello, World)
    ```
    ]
  ]
  #question(points: 1)[
    *（基本情報技術者試験 R5類題）* 以下のプログラムについて、`proc2`を呼び出した際の動作を説明せよ。
    #sourcecode[
    ```python
    def proc1():
        print("A")

    def proc2():
        proc3()
        print("B")
        proc1()

    def proc3():
        print("C")
        proc1()
    ```
    ]
  ]

  #question(points: 1)[
    *（基本情報技術者試験 サンプル問題）* 以下のプログラムの動作を説明せよ。

    #sourcecode[
    ```python
    x = 1
    y = 2
    z = 3

    x = y
    y = z
    z = x
    print(y, z)
    ```
    ]
  ]

  #question(points: 1)[
    *（基本情報技術者試験 サンプル問題 改題）* 関数`calc`は $x$, $y$ を受け取り $sqrt(x^2 + y^2)$ を計算する。`**` 演算子のみを使ってこの関数を実装せよ。

    #sourcecode[
    ```python
    def calc(x: float, y: float):
        pass
    ```
    ]
  ]
  #question(points: 2)[
    *（基本情報技術者試験 サンプル問題）* 以下の関数 `makeNewArray` を `makeNewArray([3, 2, 1, 6, 5, 4])` と呼び出した時、返り値のリストの添字 `4` 番目の値は何になるか。
    #sourcecode[
      ```py
      def makeNewArray(input: list) -> list:
          out = [input[0]]
          for i in range(1, len(input)):
              tail = out[len(out)-1]
              out.append(tail + input[i])
          return out
      ```
    ]
  ]

]

#pagebreak()

#assignment[
  *（数値演算と条件分岐 基本）*以下のプログラムを作成せよ。


  #question(points: 1)[
    `input()` 関数を使い、入力した文字列をそのまま表示するプログラムを作成せよ。
  ]

  #question(points:1)[
    `input()` 関数から2つの数字を受け取り、大きい数を表示するプログラムを作成せよ。
  ]

  #question(points: 1)[
    `input()` 関数から1つの整数を受け取り、絶対値を表示するプログラムを作成せよ。
  ]

  #question(points: 1)[
    割り算を実行し、商 (quotient) と余り (reminder) のペアを返す関数を実装せよ。

    #sourcecode[
    ```py
    def quot_rem(x: int, y: int) -> (int, int):
        pass

    assert quot_rem(4, 3) == (1, 1)
    assert quot_rem(8, 3) == (2, 2)
    assert quot_rem(10, 5) == (2, 0)
    ```
    ]
  ]

  #question(points: 2)[
    分を受け取り、時間と分のタプル値 `(hour, minutes)`を返却するプログラムを作成せよ。

    #sourcecode[
    ```py
    def minute2hours(m: int) -> (int, int):
        pass

    assert minute2hours(30) == (0, 30)  # 30分は0時間30分
    assert minute2hours(150) == (2, 30) # 150分は2時間30分
    ```
    ]
  ]

  #question(points:1)[
    ある年齢が、日本の法律に基づき成年か未成年か判定するプログラムを作成せよ。

    #sourcecode[
    ```py
    def is_adult(age: int) -> bool:
        pass

    assert is_adult(17) == False
    assert is_adult(18) == True
    ```
    ]
  ]

  #question(points:2)[
    現在の年齢と年を与えて、その人物が令和、平成、昭和、大正、明治のいずれの生まれであるかを判定するプログラムを設計せよ。
  ]

  #question(points: 2)[
    ある映画館の料金は以下のようになっている。
    - 一般料金2,000円
    - 6歳未満 無料
    - 6歳以上18歳未満 1,000円
    - 18歳以上22歳未満 1,500円
    - シニア（60歳以上）1,400円
    入力を年齢として、映画料金を算定するプログラムを書け。

    #sourcecode[
    ```py
    def admission_fee(age: int) -> int:
        pass
    ```
    ]
  ]
]

#pagebreak()

#assignment[
  *（数値演算 演習）* 以下のプログラムを作成せよ。
  #question(points: 3)[
    *（フィボナッチ数）* 与えられた整数 `n` について、n番目のフィボナッチ数を計算するプログラムを書け。

    #sourcecode[
    ```py
    def fib(n: int) -> int:
        pass

    assert fib(1) == 1
    assert fib(2) == 1
    assert fib(3) == 2
    assert fib(4) == 3
    assert fib(5) == 5
    assert fib(6) == 8
    assert fib(7) == 13
    ```
    ]

  ]

  #question(points: 3)[
    *（ユークリッドの互除法）* 2つの正整数を受け取り、最大公約数を表示するプログラムを作成せよ。不明な場合はユークリッドの互除法を調べよ。

    #sourcecode[
    ```py
    def gcd(a: int, b: int) -> int
        pass

    assert gcd(10, 8) == 4
    assert gcd(31, 7) == 1
    assert gcd(100, 50) == 50
    ```
    ]
  ]

  #question(points: 4)[
    *（エラトステネスの篩）* 与えられた正整数について素数かどうか判定するプログラムを書け。不明な場合はエラトステネスの篩を調べよ。

    #sourcecode[
    ```py
    def is_prime(n: int) -> bool
        pass

    assert is_prime(1) == False
    assert is_prime(2) == True
    assert is_prime(3) == True
    assert is_prime(4) == False
    assert is_prime(11) == True
    assert is_prime(105) == False
    assert is_prime(109) == True
    ```
    ]
  ]

  #question(points: 2)[
    うるう年を判定するプログラムを書け。ここでうるう年は以下の条件に当てはまる年である。
    - 4の倍数かつ100の倍数ではない
    - 400の倍数である
  ]

  #question(points: 2)[
    *(FizzBuzz)* 1から100までの数を表示せよ。ただし数値が3の倍数の時は`Fizz`、5の倍数の時は`Buzz`、15の倍数であれば`FizzBuzz`と表示せよ。

    この問題を解かせる理由については、以下のジェフ・アトウッドの有名なエッセイを参照せよ。

    - #link("http://www.aoky.net/articles/jeff_atwood/why_cant_programmers_program.htm")[
      『どうしてプログラマに・・・プログラムが書けないのか?』
    ]
      - http://www.aoky.net/articles/jeff_atwood/why_cant_programmers_program.htm
  ]

  #question(points: 3)[
    *（ピタゴラス数）* 100以下のピタゴラス数を列挙せよ。ここでピタゴラス数とは $a^2 + b^2 = c^2$ となるような数の組 $(a, b, c)$ である。
  ]

  #question(points: 4)[
    二次方程式 $a x^2 + b x + c = 0$ の解を求めるプログラムを書け。解がない場合または虚数解である場合には適切なメッセージを表示するようにせよ。
  ]
]

#pagebreak()

#assignment[
  *（文字列）* 以下のプログラムを作成せよ。
  #question(points: 2)[
    与えられた文字列の数をカウントする関数を定義せよ。ただし大文字・小文字を区別せずカウントすること。

    #sourcecode[
    ```py
    def count(s: str, c: str) -> int:
        pass

    assert count("AaAa", "a") == 4
    ```
    ]
  ]

  #question(points: 1)[
    スライス記法を使って `Hello, World` の先頭文字から1文字おきの文字列を取り出すプログラムを完成させよ。

    #sourcecode[
    ```py
    hello = "Hello, World"
    result = hello[???]

    assert result == "Hlo ol"
    ```
    ]
  ]

  #question(points: 2)[
    *（たぬき暗号）* たぬきの絵と一緒に `どたたうくしつのたなかた` という暗号が見つかった。このような暗号を解く関数 `solve_tanuki` を作れ。

    #sourcecode[
    ```py
    def solve_tanuki(s: str):
        pass
    ```
    ]
  ]

  #question(points: 1)[
    `"Hello"` と `"world"` を比較した時、どちらが大きな文字と判定されるか説明せよ。
  ]

  #question(points: 2)[
    ある英文字列を大文字化&母音を削除するようなプログラムを書け。

    #sourcecode[
    ```py
    def upper_remove_vowels(s: str) -> str:
        pass

    assert upper_remove_vowels("FM Yokohama") == "FM YKHM"
    ```
    ]
  ]

  #question(points: 3)[
    ある文字列が回文か判定するプログラムを書け。

    #sourcecode[
    ```py
    def is_palindrome(s: str) -> bool:
        pass

    assert is_palindrome("madamimadam") == True
    assert is_palindrome("madammadam") == True
    assert is_palindrome("abcd") == False
    assert is_palindrome("") == True
    assert is_palindrome("a") == True
    ```
    ]
  ]

  #question(points: 5)[
    ある文字列が回文か判定するプログラムを書け。ただし、自然な英文が回文と判定されるよう注意せよ。考慮としては以下のassertが通る程度でよい。

    #sourcecode[
    ```py
    def is_palindrome(s: str) -> bool:
        pass

    assert is_palindrome("madamimadam") == True
    assert is_palindrome("madammadam") == True
    assert is_palindrome("Madam, I'm Adam.") == True
    assert is_palindrome("abcd") == False
    assert is_palindrome("") == True
    assert is_palindrome("a") == True
    ```
    ]
  ]

  #question(points: 2)[
    改行文字 `\n` で区切られた文字列について、`\n`を削除して半角スペースで結合する関数を書け。
    #sourcecode[
    ```py
    def split_join(s: str) -> str:
        pass

    assert split_join("Hello\nWorld\nPython") == "Hello World Python"
    ```
    ]
  ]

  #question(points: 3)[
    文字列が整数かそうでないかを判定せよ。

    #sourcecode[
    ```py
    def is_integer(s: str) -> bool:
        pass

    assert is_integer("123") == True
    assert is_integer("-123") == True
    assert is_integer("-123e4") == False
    assert is_integer("-123.4") == False
    assert is_integer("0") == True
    assert is_integer("-0") == True
    assert is_integer("") == False
    ```
    ]
  ]

  #question(points: 5)[
    *（IPアドレスの検証）* IPアドレスは `192.168.0.1` のような ドット `.` で区切られた4つの数字で構成されている。各数字の値は `0` から `255` の範囲である必要がある。文字列がIPアドレスであるか否か判定するプログラムを書け。

    #sourcecode[
    ```py
    def is_valid_ip(s: str) -> bool:
        pass

    assert is_valid_ip("192.168.0.1") == True
    assert is_valid_ip("256.0.0.0") == False
    assert is_valid_ip("192.168.1") == False
    ```
    ]
  ]

  #question(points: 8)[
    *（HTMLタグの除去）* HTML文書の本文からタグを取り除いて出力する関数を作成せよ。正規表現を使う場合は適宜調べよ。

    #sourcecode[
    ```py
    def remove_html_tags(html_str):
        pass

    html_doc = """
    <html>
    <head>
    <title>HTML リムーバー</title>
    </head>
    <body>
    <h1>はじめに</h1>
    <p>この文書は <a href="https://example.com">HTML</a> タグの取り除き方について説明しています。</p>
    <p>さまざまな方法がありますが、Pythonの<b>正規表現</b>を用いると比較的簡単に実装できます。</p>
    </body>
    </html>
    """

    assert remove_html_tags(html_doc) == "はじめに\nこの文書は HTMLタグの取り除き方について説明しています。\nさまざまな方法がありますが、Pythonの正規表現を用いると比較的簡単に実装できます。"
    ```
    ]
  ]

  #question(points: 3)[
    *（パスワード検証）* パスワード文字列の書式を検証するプログラムを書け。書式の要件は以下の通りである。

    - 長さ8文字以上
    - 英大文字、英小文字、数字、記号（`!@#$%^&*()_+`）を各1文字以上含むこと

    #sourcecode[
    ```py
    def is_valid_password(s: str) -> bool:
        pass

    assert is_valid_password("Abc123!@")  == True
    assert is_valid_password("Ab123!@")   == False
    assert is_valid_password("abcdefgh")  == False
    assert is_valid_password("ABCD1234")  == False
    ```
    ]
  ]

  #question(points: 3)[
    小文字を大文字に変換するプログラムを書け。ただし組み込みの `upper` メソッドは使わず、`ord`, `chr`を使って書け。適宜ASCIIコード表を参照せよ。

    #sourcecode[
    ```py
    def upper(s: str) -> str:
        pass

    assert upper("Hello, World") == "HELLO, WORLD"
    ```
    ]
  ]

  #question(points: 4)[
    *（シーザー暗号）* シーザー暗号とは、アルファベットを `N` 文字ずらした文字に置き換えることで平文を暗号化する、簡単な暗号化手法である。特に13文字ずらしたものをROT13と呼び、アルファベットが26文字であることから 2回 ROT13 をかけると元に戻る性質を持つ。

    例えば `"ABC"` にROT13をかけると `"NOP"`となる。`rot13` 関数を実装せよ。

    #sourcecode[
    ```py
    def rot13(s: str) -> str:
        pass

    assert rot13("Hello, World") == "Uryyb, Jbeyq"
    assert rot13("Uryyb, Jbeyq") == "Hello, World"
    ```
    ]
  ]

  #question(points: 6)[
    九九の表を表示せよ。表が崩れないよう文字幅に注意せよ。
  ]

  #question(points: 7)[
    今年のカレンダーを表示せよ。表が崩れないよう文字幅に注意せよ。
  ]

  #question(points: 7)[
    *（メールアドレスの検証）* メールアドレスが正しい書式か判定するプログラムを書け。ただし検証するのは以下の簡略化した条件とする。

    メールアドレスは `username@hostname` という書式をしている。 `username` をローカル部、`hostname`をドメイン部と呼ぶ。

    - ローカル部
      - 英数字、アンダースコア `_`、ピリオド `.` のみを使用可能
      - 1文字目は英数字のみを使える
      - 末尾にピリオドは使えない
      - ピリオドは連続できない
    - ドメイン部
      - 英数字、ハイフン `-`、ピリオド `.` のみを使用可能
      - 末尾にピリオドは使えない
      - ピリオドは連続できない
    - ローカル部とドメイン部以外は存在しない

    #sourcecode[
      ```py
      def is_valid_email(email_str: str) -> bool:
          pass

      assert is_valid_email("john.doe@example.com") == True
      assert is_valid_email("john..doe@example.com") == False
      assert is_valid_email("john.doe.@example.com") == False
      assert is_valid_email("john@ex@mple.com") == False
      assert is_valid_email("_john@example.com") == False
      assert is_valid_email("john@example.music") == True
      assert is_valid_email("john@example..com") == False
      assert is_valid_email("john@example.com.") == False
      ```
    ]
  ]
]

#pagebreak()

#assignment[
  *（リスト）* 以下のプログラムを作成せよ。

  #question(points: 1)[
    整数のリストについて、各要素を2乗する関数を作成せよ。

    #sourcecode[
      ```py
      def square(ls: list[int]) -> list[int]:
          pass

      assert square([1,2,3,4]) == [1,4,9,16]
      ```
    ]
  ]

  #question(points: 1)[
    整数のリストについて、偶数のリストのみ抽出する関数を作成せよ。

    #sourcecode[
      ```py
      def filter_even(ls: list[int]) -> list[int]:
          pass

      assert filter_even([1,2,3,4]) == [2,4]
      ```
    ]
  ]

  #question(points: 2)[
    2つのリストについて、要素を交互に含む新しいリストを作成する関数を作成せよ。

    #sourcecode[
      ```py
      def interleave(xs: list, ys: list) -> list:
          pass

      assert interleave([1,3,5], [2,4,6]) == [1,2,3,4,5,6]
      ```
    ]
  ]

  #question(points: 2)[
    リストの各要素に指定した要素を挿入するプログラムを作れ。

    #sourcecode[
      ```py
      def intersperse(e, xs: list) -> list:
          pass

      assert intersperse(',', ["a", "b", "c"]) == ["a", ",", "b", ",", "c"]
      ```
    ]
  ]

  #question(points: 2)[
    リストの各要素に指定した要素を挿入したのち、文字列結合するプログラムを作れ。

    #sourcecode[
      ```py
      def intercalate(e, xs: list) -> list:
          pass

      assert intercalate(',', ["a", "b", "c"]) == "a,b,c"
      ```
    ]
  ]

  #question(points: 3)[
    リストのリストを転置するプログラムを作れ。

    #sourcecode[
      ```py
      def transpose(xs: list[list]) -> list[list]:
          pass

      assert transpose([[1,2,3], [4,5,6]]) == [[1,4],[2,5],[3,6]]
      ```
    ]
  ]

  #question(points: 4)[
    リストの各要素に関数を適用する関数を作れ。必要であれば `map` について調べよ。

    #sourcecode[
      ```py
      def my_map(f, xs: list) -> list:
          pass

      def square(x: int) -> int:
          return x * x

      assert my_map(square, [1,2,3,4]) == [1,4,9,16]
      ```
    ]
  ]

  #question(points: 4)[
    リストの各要素を条件に基づいてフィルタする関数を作れ。必要であれば `filter` について調べよ。

    #sourcecode[
      ```py
      def my_filter(f, xs: list) -> list:
          pass

      def even(x: int) -> bool:
          return x % 2 == 0

      assert my_filter(even, [1,2,3,4]) == [2,4]
      ```
    ]
  ]

  #question(points: 4)[
    リストを条件に基づいて分割する関数を作れ。
    #sourcecode[
      ```py
      def partition(f, xs: list) -> (list, list):
          pass

      def even(x: int) -> bool:
          return x % 2 == 0

      assert partition(even, [1,2,3,4]) == ([2,4], [1,3])
      ```
    ]

  ]
  #question(points: 2)[
    リストの長さを返す関数を実装せよ。ただし `len()` は使うな。

    #sourcecode[
      ```py
      def length(xs: list) -> int:
          pass

      assert length([]) == 0
      assert length([1,2,3]) == 3
      ```
    ]
  ]

  #question(points: 2)[
    リストを逆順にする関数を実装せよ。ただし `.reverse()`, `reversed()` あるいはスライスの逆順記法は使うな。

    #sourcecode[
      ```py
      def reverse(xs: list) -> str:
          pass

      assert reverse([]) == []
      assert reverse([1,2,3]) == [3,2,1]
      ```
    ]
  ]

  #question(points: 2)[
    英語の文章について、単語の順序を逆順にした文字列を返す関数を作れ。句読点は考慮しなくてよい。

    #sourcecode[
      ```py
      def reverse_words(text: str) -> str:
          pass

      assert reverse_words("The quick brown fox") == 'fox brown quick The'
      ```
    ]
  ]

  #question(points: 2)[
    英語の文章について、各単語を逆にした文字列を返す関数を作れ。句読点は考慮しなくてよい。

    #sourcecode[
      ```py
      def reverse_each_words(text: str) -> str:
          pass

      assert reverse_each_words("The quick brown fox") == 'ehT kciuq nworb xof'
      ```
    ]
  ]

  #question(points: 3)[
    2つのリストの共通リストを返すプログラムを作れ。

    #sourcecode[
      ```py
      def intersection(xs: list, ys: list) -> list:
          pass

      assert intersection(["Good", "morning", "everyone"], ["Good", "evening", "everyone", "!"]) == ["Good", "everyone"]
      ```
    ]
  ]

  #question(points: 3)[
    リストの連続かつ重複した要素を1つにしたリストを返せ。

    #sourcecode[
      ```py
      def uniq_consecutive(xs: list) -> list:
          pass

      assert uniq_consecutive(['a','b','b','a','c','c','c']) == ['a','b','a','c']
      ```
    ]
  ]

  #question(points: 3)[
    リストの連続かつ重複した要素をサブリストとしたリストを返せ。

    #sourcecode[
      ```py
      def pack(xs: list) -> list[list]:
          pass

      assert pack(['a','b','b','a','c','c','c']) == [['a'],['b', 'b'],['a'],['c','c','c']]
      ```
    ]
  ]

  #question(points: 5)[
    *（ランレングス圧縮）* リストをランレングス圧縮（run-length encoding）せよ。リストのランレングス圧縮とは、リストの連続かつ重複した要素 $E$ とその要素数 $N$ をタプル$(N, E)$で表現したリストである 。必要であれば前問の結果を使ってよい。

    #sourcecode[
      ```py
      def encode_run_length(xs: list) -> list[(int, Any)]:
          pass

      assert encode_run_length(['a','b','b','a','c','c','c']) == [(1,'a'), (2, 'b'), (1, 'a'), (3, 'c')]
      ```
    ]
  ]

  #question(points: 3)[
    *（ランレングス圧縮の解凍）* 前問からの続きで、ランレングス圧縮したデータを解凍（decode）せよ

    #sourcecode[
      ```py
      def decode_run_length(xs: list[(int, Any)]) -> list:
          pass

      assert decode_run_length(encode_run_length(['a','b','b','a','c','c','c'])) == ['a','b','b','a','c','c','c']
      ```
    ]
  ]

  #question(points: 2)[
    リストの各要素を重複させたリストを作れ。

    #sourcecode[
      ```py
      def duplicate(xs: list) -> list:
          pass

      assert duplicate([1,2,3]) == [1,1,2,2,3,3]
      ```
    ]
  ]

  #question(points: 2)[
    リストの各要素を `n` 回重複させたリストを作れ。

    #sourcecode[
      ```py
      def duplicate_n(xs: list, n: int) -> list:
          pass

      assert duplicate([1,2,3], 2) == [1,1,2,2,3,3]
      assert duplicate([1,2,3], 3) == [1,1,1,2,2,2,3,3,3]
      ```
    ]
  ]


  #question(points: 4)[
    リストの各要素をグループ化する関数を作れ。

    #sourcecode[
      ```py
      def group(xs: list) -> list[list]:
          pass

      assert group([1,1,2,2,3,3]) == [[1,1], [2,2], [3,3]]
      ```
    ]
  ]

  #question(points: 4)[
    文字列を区切り文字で分割したリストにする関数を作れ。

    #sourcecode[
      ```py
      def split(s: str, text: str) -> list:
          pass

      assert split(',', "Hello,World") == ["Hello", "World"]
      ```
    ]
  ]

  #question(points: 5)[
    リストの順列を作る関数を作れ。必要であれば `itertools.permutation` を参考にしてよいが、実装にこの関数を使うな。

    #sourcecode[
      ```py
      def permutation(xs: list) -> list:
          pass

      assert sorted(permutation(["a", "b", "c"])) == sorted([('a', 'b', 'c'), ('a', 'c', 'b'), ('b', 'a', 'c'), ('b', 'c', 'a'), ('c', 'a', 'b'), ('c', 'b', 'a')])
      ```
    ]
  ]

  #question(points: 5)[
    リストの組み合わせを列挙する関数を作れ。ここでリストの組み合わせ（combination）とは $N$ 個の要素を持つリストから $K$ 個選んだ場合の組み合わせを重複なしで列挙するものである。必要であれば `itertools.combination` を参考にしてよいが、実装にこの関数を使うな。

    #sourcecode[
      ```py
      def combination(xs: list, k: list) -> list:
          pass

      assert list(combinations(['a','b','c'], 2)) == [('a', 'b'), ('a', 'c'), ('b', 'c')]
      ```
    ]
  ]

  #question(points: 4)[
    整数 $0, 1, 2, 3, 4, 5$ から異なる4つの数字を選んで4桁の整数を作る。2400より大きくなる数字を列挙せよ。
  ]

  #question(points: 6)[
    *（4つの4）* 4つの$4$と四則演算を用いて$10$を作れ。計算式を出力せよ。この問題については以下を参照せよ。

    - #link("https://ja.wikipedia.org/wiki/4%E3%81%A4%E3%81%AE4")[4つの4 - Wikipedia]
  ]

  #question(points: 2)[
    リストをスライスする関数を作れ。スライスは2つの添字 $I$ と $K$ を指定して行われる。$I$ はスライスを開始する添字、$K$ は自身を含まないスライス終端の添字である。

    #sourcecode[
      ```py
      def slice(i: int, k: int, xs: list) -> list:
          pass

      assert slice(2, 5, [1,2,3,4,5,6]) == [3,4,5]
      ```
    ]
  ]

  #question(points: 2)[
    リストを指定した数の要素だけ回転させる関数を作れ。

    #sourcecode[
      ```py
      def rotate(n: int, xs: list) -> list:
          pass

      # 左側に回転
      assert rotate(3, ['a', 'b', 'c', 'd', 'e', 'f', 'g']) == ['d', 'e', 'f', 'g', 'a', 'b', 'c']
      # 右側に回転
      assert rotate(-3, ['a', 'b', 'c', 'd', 'e', 'f', 'g']) == ['e', 'f', 'g', 'a', 'b', 'c', 'd']
      ```
    ]
  ]

  #question(points: 2)[
    リストの指定した位置に指定した要素を挿入するプログラムを書け。

    #sourcecode[
      ```py
      def insert(elem, n: int, xs: list) -> list:
          pass

      assert insert('b', 1, ['a', 'c', 'd']) == ['a', 'b', 'c', 'd']
      ```
    ]
  ]

  #question(points: 2)[
    指定した範囲に含まれる整数のリストを返す関数を書け。ただし終端の数は含まない。

    #sourcecode[
      ```py
      def my_range(start: int, end: int) -> list[int]:
          pass

      assert my_range(2, 10) == [2,3,4,5,6,7,8,9]
      ```
    ]
  ]
  #question(points: 2)[
    指定された要素数でゼロ埋めされたリストを返す関数を書け。

    #sourcecode[
      ```py
      def zeros(n: int) -> list[int]:
          pass

      assert zeros(5) == [0, 0, 0, 0, 0]
      ```
    ]
  ]
  #question(points: 2)[
    指定された要素数$n,m$でゼロ埋めされた二次元リストを返す関数を書け。

    #sourcecode[
      ```py
      def zeros(n: int, m: int) -> list[list[int]]:
          pass

      assert zeros(3, 2) == [[0, 0], [0, 0], [0, 0]]
      ```
    ]

    一般の次元に拡張された関数については `numpy.zeros` を参考にせよ。
  ]
  #question(points: 2)[
    指定された要素数$n,m$で1埋めされた二次元リストを返す関数を書け。

    #sourcecode[
      ```py
      def ones(n: int, m: int) -> list[list[int]]:
          pass

      assert ones(3, 2) == [[1, 1], [1, 1], [1, 1]]
      ```
    ]

    一般の次元に拡張された関数については `numpy.ones` を参考にせよ。
  ]
  #question(points: 2)[
    指定された要素数$n,m$の二次元リストを返す関数を書け。ただし各要素について0または1のランダムな値をセットせよ。必要であれば`random`モジュールについて調べよ。余裕があればこの関数をテストする方法を考えてみよ。

    #sourcecode[
      ```py
      def rand_field(n: int, m: int) -> list[list[int]]:
          pass
      ```
    ]
  ]

  #question(points: 2)[
    前問の `rand_field` で生成した2次元リストについて、要素が`1`なら`#`、`0`なら`.`を描画するプログラムを書け。各行の描画が終わったら改行するようにせよ。

    #sourcecode[
      ```py
      def print_field(ls: list[list]):
          pass
      ```
    ]
  ]

  #question(points: 7)[
    *（ライフゲーム）* 前問からの続きで、生成した2次元リスト $L$ の各要素について、以下の条件で値を更新する関数を作成せよ。
    - 2次元リスト $L$ の*要素* $L(x,y)$ について（$x$, $y$は要素の添字）、$L(x+d x, y+d y)$ を*隣接セル*と呼ぶ。ここで $(d x, d y) in {(1, 1),(1, 0),(1,-1),(0, 1), (0, -1), (-1, 1), (-1, 0), (-1, -1)}$
    - 要素の値が $1$ の時 *生存*、$0$ の時 *死* と呼ぶ。
    - 要素 $L(x, y)$ が死で隣接セルの値が3つ生存している場合、要素を生存に更新する（*誕生*）。
    - 要素 $L(x, y)$ が生存で隣接セルが2つないし3つ生存している場合、要素は生存のままとする（*維持*）。
    - 要素 $L(x, y)$ が生存で隣接セルが1以下ないし4つ以上生存の場合、要素は死に更新する（*過疎*および*過剰*による死）。


    #sourcecode[
      ```py
      def tick_field(ls: list[list]) -> list[list]:
          pass
      ```
    ]

    - 完成したら、`sleep` 関数などを参考に、ある程度の大きさのフィールドを作り、更新を繰り返しながら適当な時間間隔で表示してみよ。
  ]
]

#pagebreak()

#assignment[
  *（実践問題）以下の問題を解け。必要に応じて `dict`, `set`, 正規表現について調べよ。*

  #question(points: 2)[
    以下のリンクを開き、ページを保存せよ。

    https://raw.githubusercontent.com/dolph/dictionary/master/enable1.txt

    これは英単語が1行1語で辞書順に格納されたファイルである。このファイルの単語数をカウントするプログラムを書け。必要であれば `open`, `close`, `readlines` について調べよ。

    以降の問題は下記リンクの問題を参考にしている。

    #link("https://www.reddit.com/r/dailyprogrammer/comments/onfehl/20210719_challenge_399_easy_letter_value_sum/")[
      [2021-07-19] Challenge #399 [Easy] Letter value sum
    ]
  ]

  #question(points: 2)[
    文字数20以上の単語はいくつあるか。それはどのような単語か。
  ]

  #question(points: 2)[
    辞書中で最も長い単語は何か。
  ]

  #question(points: 3)[
    各単語を頭文字が同じものにグループ化したとき、各頭文字ごとの単語数を表示せよ。
  ]

  #question(points: 4)[
    辞書からアナグラムを探して表示せよ。アナグラムとは `debit`, `bited` のように並び替えると同じになる単語である。
  ]

  #question(points: 3)[
    単語のスコアを以下のように定義する。
    - 単語の点数は、各文字の点数の総和になる。
    - 各文字の点数は、`a` は1点から `z` は26点までアルファベット順に増加する。

    単語のスコアを計算するプログラムを作れ。

    #sourcecode[
      ```py
      def lettersum(s: str) -> int:
          pass

      assert lettersum("") == 0
      assert lettersum("a") == 1
      assert lettersum("z") == 26
      assert lettersum("cab") == 6
      assert lettersum("excellent") == 100
      assert lettersum("microspectrophotometries") == 317
      ```
    ]
  ]

  #question(points: 3)[
    辞書から最大のスコアを持つ単語を探せ。
  ]

  #question(points: 3)[
    スコアが偶数となる単語はいくつあるか？
  ]

  #question(points: 4)[
    スコアが100になる単語は1921存在する。100の次に単語の存在頻度が多いものは何か。
  ]

  #question(points: 6)[
    `cytotoxicity` と `unreservedness` は同じスコア 188 を持つが、互いに共通する文字を持たない。このような単語は他にあるか調べ、存在するなら挙げてみよ。
  ]
]

#pagebreak()

#assignment[
  *（ストラウストラップのプログラミング入門より）* 以下に挙げたテーマから少なくとも1つを選んで議論せよ（800文字以上1200文字以下）。根拠に基づいて議論すること。
  #question(points: 20)[
    ソフトウェアとは何か。ソフトウェアはなぜ重要なのか。
  ]
  #question(points: 20)[
    計算機科学（コンピュータサイエンス）とプログラミングの違いはなにか。何が重要なのか。
  ]
  #question(points: 20)[
    ソフトウェアが正常に動作しない場合、どのような問題が起きるか。具体例を挙げること。
  ]
  #question(points: 20)[
    ソフトウェア開発が困難になる理由はなにか。
  ]
]


#assignment[
  *（ストラウストラップのプログラミング入門より）* 以下に挙げたテーマから少なくとも1つを選んで議論せよ。文字数は問わないが端的かつ必要十分な議論をすること。また、根拠に基づいて意見を述べること。
  #question(points: 20)[
    自分が何らかの知識を持っている職業について、その仕事にソフトウェアがどのように関わっているかを分析してみよ。
  ]
  #question(points: 20)[
    優れたプログラマないしエンジニアに共通する特性を議論せよ。
  ]
  #question(points: 20)[
    自分が関心のあるソフトウェアを複数挙げ、その中で自分が将来関わりたいものを選び、なぜ選んだか理由を述べよ。
  ]
  #question(points: 20)[
    人間が行う活動のうち、いかなる形（間接的に）でもコンピュータが関わらない活動を挙げよ。根拠を述べること。
  ]
]

#assignment[
  *（令和5年度 技術士第二次試験（情報工学部門）改題）*
  生成AIの技術レベルが著しく向上し、用途も広がっている一方で、その利活用・普及に伴う社会的課題も顕在化してきている。このような状況を踏まえ、生成AIを活用する具体的なサービスを想定し、その構築や運用を行う立場で以下の問いに答えよ。

  #question(points: 20)[
    技術者としての立場で多面的な観点から３つの課題を抽出し、それぞれの観点を明記した上で、その課題の内容を示せ。課題を表す用語としては以下を参考にせよ。

    幻覚（ハルシネーション）、差別（バイアス）、プライバシー、環境問題（計算コスト）、データ汚染、悪用。
  ]
  #question(points: 20)[
    前問で抽出した課題のうち最も重要と考える課題を1つ挙げ、その課題に対する解決策を、情報工学の専門技術用語を交えて示せ。
  ]
  #question(points: 20)[
    前問で示した解決策を実施するに当たり生じる波及効果と専門技術を踏まえた懸案事項への対応策を示せ。
  ]
  #question(points: 20)[
    上記の業務遂行に当たり、技術者としての倫理・社会の持続可能性の観点から必要となる要件・留意点を題意に即して述べよ。
  ]

]

#pagebreak()

#point-table

#h(1fr)
#point-sum-box
