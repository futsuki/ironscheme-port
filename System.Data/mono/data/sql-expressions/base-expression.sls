(library (mono data sql-expressions base-expression)
  (export is?
          base-expression?
          depends-on?
          eval-boolean?
          reset-expression
          get-hash-code
          eval
          equals?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Data.SqlExpressions.BaseExpression a))
  (define (base-expression? a)
    (clr-is Mono.Data.SqlExpressions.BaseExpression a))
  (define-method-port
    depends-on?
    Mono.Data.SqlExpressions.BaseExpression
    DependsOn
    (System.Boolean System.Data.DataColumn))
  (define-method-port
    eval-boolean?
    Mono.Data.SqlExpressions.BaseExpression
    EvalBoolean
    (System.Boolean System.Data.DataRow))
  (define-method-port
    reset-expression
    Mono.Data.SqlExpressions.BaseExpression
    ResetExpression
    (System.Void))
  (define-method-port
    get-hash-code
    Mono.Data.SqlExpressions.BaseExpression
    GetHashCode
    (System.Int32))
  (define-method-port
    eval
    Mono.Data.SqlExpressions.BaseExpression
    Eval
    (System.Object System.Data.DataRow))
  (define-method-port
    equals?
    Mono.Data.SqlExpressions.BaseExpression
    Equals
    (System.Boolean System.Object)))
