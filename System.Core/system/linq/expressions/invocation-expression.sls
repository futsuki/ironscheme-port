(library (system linq expressions invocation-expression)
  (export is? invocation-expression? expression arguments)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Linq.Expressions.InvocationExpression a))
  (define (invocation-expression? a)
    (clr-is System.Linq.Expressions.InvocationExpression a))
  (define-field-port
    expression
    #f
    #f
    (property:)
    System.Linq.Expressions.InvocationExpression
    Expression
    System.Linq.Expressions.Expression)
  (define-field-port
    arguments
    #f
    #f
    (property:)
    System.Linq.Expressions.InvocationExpression
    Arguments
    "System.Collections.ObjectModel.ReadOnlyCollection`1[[System.Linq.Expressions.Expression, System.Core, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
