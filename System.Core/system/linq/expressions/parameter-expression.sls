(library (system linq expressions parameter-expression)
  (export is? parameter-expression? name)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Linq.Expressions.ParameterExpression a))
  (define (parameter-expression? a)
    (clr-is System.Linq.Expressions.ParameterExpression a))
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Linq.Expressions.ParameterExpression
    Name
    System.String))
