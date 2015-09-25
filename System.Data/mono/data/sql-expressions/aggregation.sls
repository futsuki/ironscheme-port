(library (mono data sql-expressions aggregation)
  (export new
          is?
          aggregation?
          depends-on?
          get-hash-code
          reset-expression
          eval
          equals?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Data.SqlExpressions.Aggregation a ...)))))
  (define (is? a) (clr-is Mono.Data.SqlExpressions.Aggregation a))
  (define (aggregation? a)
    (clr-is Mono.Data.SqlExpressions.Aggregation a))
  (define-method-port
    depends-on?
    Mono.Data.SqlExpressions.Aggregation
    DependsOn
    (System.Boolean System.Data.DataColumn))
  (define-method-port
    get-hash-code
    Mono.Data.SqlExpressions.Aggregation
    GetHashCode
    (System.Int32))
  (define-method-port
    reset-expression
    Mono.Data.SqlExpressions.Aggregation
    ResetExpression
    (System.Void))
  (define-method-port
    eval
    Mono.Data.SqlExpressions.Aggregation
    Eval
    (System.Object System.Data.DataRow))
  (define-method-port
    equals?
    Mono.Data.SqlExpressions.Aggregation
    Equals
    (System.Boolean System.Object)))
