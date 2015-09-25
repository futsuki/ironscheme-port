(library (system linq expressions constant-expression)
  (export is? constant-expression? value)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Linq.Expressions.ConstantExpression a))
  (define (constant-expression? a)
    (clr-is System.Linq.Expressions.ConstantExpression a))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Linq.Expressions.ConstantExpression
    Value
    System.Object))
