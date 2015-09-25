(library (system linq expressions new-expression)
  (export is? new-expression? constructor arguments members)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Linq.Expressions.NewExpression a))
  (define (new-expression? a)
    (clr-is System.Linq.Expressions.NewExpression a))
  (define-field-port
    constructor
    #f
    #f
    (property:)
    System.Linq.Expressions.NewExpression
    Constructor
    System.Reflection.ConstructorInfo)
  (define-field-port
    arguments
    #f
    #f
    (property:)
    System.Linq.Expressions.NewExpression
    Arguments
    "System.Collections.ObjectModel.ReadOnlyCollection`1[[System.Linq.Expressions.Expression, System.Core, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]")
  (define-field-port
    members
    #f
    #f
    (property:)
    System.Linq.Expressions.NewExpression
    Members
    "System.Collections.ObjectModel.ReadOnlyCollection`1[[System.Reflection.MemberInfo, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
