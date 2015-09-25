(library (system code-dom code-binary-operator-expression)
  (export new
          is?
          code-binary-operator-expression?
          left-get
          left-set!
          left-update!
          operator-get
          operator-set!
          operator-update!
          right-get
          right-set!
          right-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.CodeDom.CodeBinaryOperatorExpression
             a
             ...)))))
  (define (is? a)
    (clr-is System.CodeDom.CodeBinaryOperatorExpression a))
  (define (code-binary-operator-expression? a)
    (clr-is System.CodeDom.CodeBinaryOperatorExpression a))
  (define-field-port
    left-get
    left-set!
    left-update!
    (property:)
    System.CodeDom.CodeBinaryOperatorExpression
    Left
    System.CodeDom.CodeExpression)
  (define-field-port
    operator-get
    operator-set!
    operator-update!
    (property:)
    System.CodeDom.CodeBinaryOperatorExpression
    Operator
    System.CodeDom.CodeBinaryOperatorType)
  (define-field-port
    right-get
    right-set!
    right-update!
    (property:)
    System.CodeDom.CodeBinaryOperatorExpression
    Right
    System.CodeDom.CodeExpression))
