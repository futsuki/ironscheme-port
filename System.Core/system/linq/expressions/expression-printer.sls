(library (system linq expressions expression-printer)
  (export is? expression-printer? to-string)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Linq.Expressions.ExpressionPrinter a))
  (define (expression-printer? a)
    (clr-is System.Linq.Expressions.ExpressionPrinter a))
  (define-method-port
    to-string
    System.Linq.Expressions.ExpressionPrinter
    ToString
    (static: System.String System.Linq.Expressions.MemberBinding)
    (static: System.String System.Linq.Expressions.ElementInit)
    (static: System.String System.Linq.Expressions.Expression)))
