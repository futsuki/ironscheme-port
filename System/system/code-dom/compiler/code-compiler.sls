(library (system code-dom compiler code-compiler)
  (export is? code-compiler?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.CodeDom.Compiler.CodeCompiler a))
  (define (code-compiler? a)
    (clr-is System.CodeDom.Compiler.CodeCompiler a)))