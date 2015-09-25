(library (mono data sql-expressions binary-op-expression)
  (export is? binary-op-expression? get-hash-code equals?)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is Mono.Data.SqlExpressions.BinaryOpExpression a))
  (define (binary-op-expression? a)
    (clr-is Mono.Data.SqlExpressions.BinaryOpExpression a))
  (define-method-port
    get-hash-code
    Mono.Data.SqlExpressions.BinaryOpExpression
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    Mono.Data.SqlExpressions.BinaryOpExpression
    Equals
    (System.Boolean System.Object)))
