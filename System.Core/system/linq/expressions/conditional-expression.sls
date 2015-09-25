(library (system linq expressions conditional-expression)
  (export is? conditional-expression? test if-true if-false)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Linq.Expressions.ConditionalExpression a))
  (define (conditional-expression? a)
    (clr-is System.Linq.Expressions.ConditionalExpression a))
  (define-field-port
    test
    #f
    #f
    (property:)
    System.Linq.Expressions.ConditionalExpression
    Test
    System.Linq.Expressions.Expression)
  (define-field-port
    if-true
    #f
    #f
    (property:)
    System.Linq.Expressions.ConditionalExpression
    IfTrue
    System.Linq.Expressions.Expression)
  (define-field-port
    if-false
    #f
    #f
    (property:)
    System.Linq.Expressions.ConditionalExpression
    IfFalse
    System.Linq.Expressions.Expression))
