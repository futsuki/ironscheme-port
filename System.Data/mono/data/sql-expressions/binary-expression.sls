(library (mono data sql-expressions binary-expression)
  (export is?
          binary-expression?
          depends-on?
          get-hash-code
          reset-expression
          equals?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Data.SqlExpressions.BinaryExpression a))
  (define (binary-expression? a)
    (clr-is Mono.Data.SqlExpressions.BinaryExpression a))
  (define-method-port
    depends-on?
    Mono.Data.SqlExpressions.BinaryExpression
    DependsOn
    (System.Boolean System.Data.DataColumn))
  (define-method-port
    get-hash-code
    Mono.Data.SqlExpressions.BinaryExpression
    GetHashCode
    (System.Int32))
  (define-method-port
    reset-expression
    Mono.Data.SqlExpressions.BinaryExpression
    ResetExpression
    (System.Void))
  (define-method-port
    equals?
    Mono.Data.SqlExpressions.BinaryExpression
    Equals
    (System.Boolean System.Object)))
