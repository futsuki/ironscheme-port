(library (system linq expressions member-init-expression)
  (export is? member-init-expression? new-expression bindings)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Linq.Expressions.MemberInitExpression a))
  (define (member-init-expression? a)
    (clr-is System.Linq.Expressions.MemberInitExpression a))
  (define-field-port
    new-expression
    #f
    #f
    (property:)
    System.Linq.Expressions.MemberInitExpression
    NewExpression
    System.Linq.Expressions.NewExpression)
  (define-field-port
    bindings
    #f
    #f
    (property:)
    System.Linq.Expressions.MemberInitExpression
    Bindings
    "System.Collections.ObjectModel.ReadOnlyCollection`1[[System.Linq.Expressions.MemberBinding, System.Core, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
