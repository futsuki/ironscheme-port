(library (system code-dom code-snippet-compile-unit)
  (export new
          is?
          code-snippet-compile-unit?
          line-pragma-get
          line-pragma-set!
          line-pragma-update!
          value-get
          value-set!
          value-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.CodeSnippetCompileUnit a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeSnippetCompileUnit a))
  (define (code-snippet-compile-unit? a)
    (clr-is System.CodeDom.CodeSnippetCompileUnit a))
  (define-field-port
    line-pragma-get
    line-pragma-set!
    line-pragma-update!
    (property:)
    System.CodeDom.CodeSnippetCompileUnit
    LinePragma
    System.CodeDom.CodeLinePragma)
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.CodeDom.CodeSnippetCompileUnit
    Value
    System.String))
