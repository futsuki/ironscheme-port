(library (system code-dom code-indexer-expression)
  (export new
          is?
          code-indexer-expression?
          indices
          target-object-get
          target-object-set!
          target-object-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.CodeIndexerExpression a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeIndexerExpression a))
  (define (code-indexer-expression? a)
    (clr-is System.CodeDom.CodeIndexerExpression a))
  (define-field-port
    indices
    #f
    #f
    (property:)
    System.CodeDom.CodeIndexerExpression
    Indices
    System.CodeDom.CodeExpressionCollection)
  (define-field-port
    target-object-get
    target-object-set!
    target-object-update!
    (property:)
    System.CodeDom.CodeIndexerExpression
    TargetObject
    System.CodeDom.CodeExpression))
