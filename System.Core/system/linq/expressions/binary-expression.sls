(library (system linq expressions binary-expression)
  (export is?
          binary-expression?
          left
          right
          method
          is-lifted?
          is-lifted-to-null?
          conversion)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Linq.Expressions.BinaryExpression a))
  (define (binary-expression? a)
    (clr-is System.Linq.Expressions.BinaryExpression a))
  (define-field-port
    left
    #f
    #f
    (property:)
    System.Linq.Expressions.BinaryExpression
    Left
    System.Linq.Expressions.Expression)
  (define-field-port
    right
    #f
    #f
    (property:)
    System.Linq.Expressions.BinaryExpression
    Right
    System.Linq.Expressions.Expression)
  (define-field-port
    method
    #f
    #f
    (property:)
    System.Linq.Expressions.BinaryExpression
    Method
    System.Reflection.MethodInfo)
  (define-field-port
    is-lifted?
    #f
    #f
    (property:)
    System.Linq.Expressions.BinaryExpression
    IsLifted
    System.Boolean)
  (define-field-port
    is-lifted-to-null?
    #f
    #f
    (property:)
    System.Linq.Expressions.BinaryExpression
    IsLiftedToNull
    System.Boolean)
  (define-field-port
    conversion
    #f
    #f
    (property:)
    System.Linq.Expressions.BinaryExpression
    Conversion
    System.Linq.Expressions.LambdaExpression))
