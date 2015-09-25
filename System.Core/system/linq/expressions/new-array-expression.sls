(library (system linq expressions new-array-expression)
  (export is? new-array-expression? expressions)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Linq.Expressions.NewArrayExpression a))
  (define (new-array-expression? a)
    (clr-is System.Linq.Expressions.NewArrayExpression a))
  (define-field-port
    expressions
    #f
    #f
    (property:)
    System.Linq.Expressions.NewArrayExpression
    Expressions
    "System.Collections.ObjectModel.ReadOnlyCollection`1[[System.Linq.Expressions.Expression, System.Core, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
