# ironscheme-port

PUBLIC DOMAIN

- ironschemeから.NETなどのメソッドを呼び出すラッパーを自動作成するものです
- 使い方の例(System.String.StartsWith)
```scheme
(import (prefix (system string) string-))
(string-starts-with? "abcde" "abc")
```
- ジェネリック関数は未対応です
- テストが不十分なので使用には注意が必要です
- リポジトリ内の既存のslsファイルはUnity5.1.1f内で作成されたものです。.NET 2.0に少し追加された程度のアセンブリから抽出されています。
- アセンブリごとにフォルダが分かれていて、名前空間ごとにフォルダ階層が深くなっています
- 型ごとにファイルが分かれています
- 命名法をprefix import前提にするか、予めすべてprefixしておくかは考え中です（今は暫定ですがprefix import前提）。ある程度使いながら決める予定ですが、
どちらが優れているなどの考えをお持ちの方がいらっしゃればなにとぞお聞かせください。


