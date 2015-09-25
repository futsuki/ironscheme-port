(library (system code-dom compiler code-parser)
  (export is? code-parser? parse)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.CodeDom.Compiler.CodeParser a))
  (define (code-parser? a)
    (clr-is System.CodeDom.Compiler.CodeParser a))
  (define-method-port
    parse
    System.CodeDom.Compiler.CodeParser
    Parse
    (System.CodeDom.CodeCompileUnit System.IO.TextReader)))
