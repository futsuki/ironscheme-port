(library (system linq expressions lambda-expression)
  (export is? lambda-expression? compile body parameters)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Linq.Expressions.LambdaExpression a))
  (define (lambda-expression? a)
    (clr-is System.Linq.Expressions.LambdaExpression a))
  (define-method-port
    compile
    System.Linq.Expressions.LambdaExpression
    Compile
    (System.Delegate))
  (define-field-port
    body
    #f
    #f
    (property:)
    System.Linq.Expressions.LambdaExpression
    Body
    System.Linq.Expressions.Expression)
  (define-field-port
    parameters
    #f
    #f
    (property:)
    System.Linq.Expressions.LambdaExpression
    Parameters
    "System.Collections.ObjectModel.ReadOnlyCollection`1[[System.Linq.Expressions.ParameterExpression, System.Core, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
