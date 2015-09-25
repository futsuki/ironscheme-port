(library (system linq expressions unary-expression)
  (export is?
          unary-expression?
          operand
          method
          is-lifted?
          is-lifted-to-null?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Linq.Expressions.UnaryExpression a))
  (define (unary-expression? a)
    (clr-is System.Linq.Expressions.UnaryExpression a))
  (define-field-port
    operand
    #f
    #f
    (property:)
    System.Linq.Expressions.UnaryExpression
    Operand
    System.Linq.Expressions.Expression)
  (define-field-port
    method
    #f
    #f
    (property:)
    System.Linq.Expressions.UnaryExpression
    Method
    System.Reflection.MethodInfo)
  (define-field-port
    is-lifted?
    #f
    #f
    (property:)
    System.Linq.Expressions.UnaryExpression
    IsLifted
    System.Boolean)
  (define-field-port
    is-lifted-to-null?
    #f
    #f
    (property:)
    System.Linq.Expressions.UnaryExpression
    IsLiftedToNull
    System.Boolean))
