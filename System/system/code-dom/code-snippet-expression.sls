(library (system code-dom code-snippet-expression)
  (export new
          is?
          code-snippet-expression?
          value-get
          value-set!
          value-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.CodeSnippetExpression a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeSnippetExpression a))
  (define (code-snippet-expression? a)
    (clr-is System.CodeDom.CodeSnippetExpression a))
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.CodeDom.CodeSnippetExpression
    Value
    System.String))
