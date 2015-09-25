(library (system linq expressions method-call-expression)
  (export is? method-call-expression? object method arguments)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Linq.Expressions.MethodCallExpression a))
  (define (method-call-expression? a)
    (clr-is System.Linq.Expressions.MethodCallExpression a))
  (define-field-port
    object
    #f
    #f
    (property:)
    System.Linq.Expressions.MethodCallExpression
    Object
    System.Linq.Expressions.Expression)
  (define-field-port
    method
    #f
    #f
    (property:)
    System.Linq.Expressions.MethodCallExpression
    Method
    System.Reflection.MethodInfo)
  (define-field-port
    arguments
    #f
    #f
    (property:)
    System.Linq.Expressions.MethodCallExpression
    Arguments
    "System.Collections.ObjectModel.ReadOnlyCollection`1[[System.Linq.Expressions.Expression, System.Core, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
