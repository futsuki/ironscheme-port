(library (system linq expressions list-init-expression)
  (export is? list-init-expression? new-expression initializers)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Linq.Expressions.ListInitExpression a))
  (define (list-init-expression? a)
    (clr-is System.Linq.Expressions.ListInitExpression a))
  (define-field-port
    new-expression
    #f
    #f
    (property:)
    System.Linq.Expressions.ListInitExpression
    NewExpression
    System.Linq.Expressions.NewExpression)
  (define-field-port
    initializers
    #f
    #f
    (property:)
    System.Linq.Expressions.ListInitExpression
    Initializers
    "System.Collections.ObjectModel.ReadOnlyCollection`1[[System.Linq.Expressions.ElementInit, System.Core, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
