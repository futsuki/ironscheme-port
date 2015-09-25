(library (system code-dom code-snippet-statement)
  (export new
          is?
          code-snippet-statement?
          value-get
          value-set!
          value-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.CodeSnippetStatement a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeSnippetStatement a))
  (define (code-snippet-statement? a)
    (clr-is System.CodeDom.CodeSnippetStatement a))
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.CodeDom.CodeSnippetStatement
    Value
    System.String))
