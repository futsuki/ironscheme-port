(library (system linq expressions member-assignment)
  (export is? member-assignment? expression)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Linq.Expressions.MemberAssignment a))
  (define (member-assignment? a)
    (clr-is System.Linq.Expressions.MemberAssignment a))
  (define-field-port
    expression
    #f
    #f
    (property:)
    System.Linq.Expressions.MemberAssignment
    Expression
    System.Linq.Expressions.Expression))
