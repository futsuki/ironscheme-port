(library (system linq expressions member-expression)
  (export is? member-expression? expression member)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Linq.Expressions.MemberExpression a))
  (define (member-expression? a)
    (clr-is System.Linq.Expressions.MemberExpression a))
  (define-field-port
    expression
    #f
    #f
    (property:)
    System.Linq.Expressions.MemberExpression
    Expression
    System.Linq.Expressions.Expression)
  (define-field-port
    member
    #f
    #f
    (property:)
    System.Linq.Expressions.MemberExpression
    Member
    System.Reflection.MemberInfo))
