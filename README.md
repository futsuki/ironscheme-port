# ironscheme-port

PUBLIC DOMAIN

- ironschemeから.NETなどのメソッドを呼び出すラッパーを自動作成したものです
- アセンブリごとにフォルダが分かれていて、名前空間ごとにフォルダ階層が深くなっています
- 型ごとにファイルが分かれています
- 使い方の例(System.String.StartsWith)
```
(import (prefix (system string) string-))
(string-starts-with "abcde" "abc")
```
- 命名法をprefix import前提にするか、予めすべてprefixしておくかは考え中です（今は暫定ですがprefix import前提）。ある程度使いながら決める予定ですが、
どちらが優れているなどの考えをお持ちの方がいらっしゃればなにとぞお聞かせください。
- ジェネリック関数は未対応です
- テストが不十分なので使用には注意が必要です



