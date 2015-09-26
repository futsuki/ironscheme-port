# ironscheme-port

PUBLIC DOMAIN

## 参照
- [IronScheme](https://ironscheme.codeplex.com/)
- [IronScheme github](https://github.com/leppie/IronScheme)
- [IronScheme document](https://ironscheme.codeplex.com/documentation)
- [R6RS](http://www.r6rs.org/)
- [R6RSライブラリ(日本語)](http://practical-scheme.net/wiliki/wiliki.cgi?R6RS%3A%E6%A8%99%E6%BA%96%E3%83%A9%E3%82%A4%E3%83%96%E3%83%A9%E3%83%AA)


## 概要
- IronSchemeから.NETなどのメソッドを呼び出すラッパーを自動作成するものです。
- いくつかのアセンブリから抽出済みのslsファイルがあります。
- 使い方の例(System.String.StartsWith, mscorlib)。
```scheme
(import (prefix (system string) string-))
(string-starts-with? "abcde" "abc")
```
- ジェネリック関数は未対応です。
- テストが不十分なので使用には注意が必要です。
- リポジトリ内の既存のslsファイルはUnity5.1.1f内で作成されたものです。.NET 2.0に少し追加された程度のアセンブリから抽出されています。
- アセンブリごとにフォルダが分かれていて、名前空間ごとにフォルダ階層が深くなっています。
- 型ごとにファイルが分かれています。
- 命名法をprefix import前提にするか、予めすべてprefixしておくかは考え中です。今は暫定ですがprefix import前提になっています。どちらにするかはある程度使いながら決める予定ですが、
どちらが優れているなどの考えをお持ちの方がいらっしゃればなにとぞお聞かせください。

##命名規則
- （条件が重なった場合はこの表の上から順番に処理する。）
- 大文字を単語の境界として単語ごとに区切り、小文字化してハイフンで繋ぐ。
- `ReadOnly` => `read-only`
- 返り値が`System.Boolean`のメソッド、または型が`System.Boolean`のプロパティもしくはフィールドの場合、末尾に`?`を付ける。
- `read-only` => `read-only?`
- フィールドもしくはプロパティの場合、getとsetが可能なら末尾に`-get`/`-set!`を付ける。どちらかのみの場合はなにも付けない。
- `read-only?-get` `read-only?-set!`
