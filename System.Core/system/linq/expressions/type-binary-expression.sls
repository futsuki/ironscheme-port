(library (system linq expressions type-binary-expression)
  (export is? type-binary-expression? expression type-operand)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Linq.Expressions.TypeBinaryExpression a))
  (define (type-binary-expression? a)
    (clr-is System.Linq.Expressions.TypeBinaryExpression a))
  (define-field-port
    expression
    #f
    #f
    (property:)
    System.Linq.Expressions.TypeBinaryExpression
    Expression
    System.Linq.Expressions.Expression)
  (define-field-port
    type-operand
    #f
    #f
    (property:)
    System.Linq.Expressions.TypeBinaryExpression
    TypeOperand
    System.Type))
