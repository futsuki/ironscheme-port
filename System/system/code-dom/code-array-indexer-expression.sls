(library (system code-dom code-array-indexer-expression)
  (export new
          is?
          code-array-indexer-expression?
          indices
          target-object-get
          target-object-set!
          target-object-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.CodeArrayIndexerExpression a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeArrayIndexerExpression a))
  (define (code-array-indexer-expression? a)
    (clr-is System.CodeDom.CodeArrayIndexerExpression a))
  (define-field-port
    indices
    #f
    #f
    (property:)
    System.CodeDom.CodeArrayIndexerExpression
    Indices
    System.CodeDom.CodeExpressionCollection)
  (define-field-port
    target-object-get
    target-object-set!
    target-object-update!
    (property:)
    System.CodeDom.CodeArrayIndexerExpression
    TargetObject
    System.CodeDom.CodeExpression))
