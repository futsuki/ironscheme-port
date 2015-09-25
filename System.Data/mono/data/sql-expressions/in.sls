(library (mono data sql-expressions in)
  (export new is? in? get-hash-code eval-boolean? eval equals?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Data.SqlExpressions.In a ...)))))
  (define (is? a) (clr-is Mono.Data.SqlExpressions.In a))
  (define (in? a) (clr-is Mono.Data.SqlExpressions.In a))
  (define-method-port
    get-hash-code
    Mono.Data.SqlExpressions.In
    GetHashCode
    (System.Int32))
  (define-method-port
    eval-boolean?
    Mono.Data.SqlExpressions.In
    EvalBoolean
    (System.Boolean System.Data.DataRow))
  (define-method-port
    eval
    Mono.Data.SqlExpressions.In
    Eval
    (System.Object System.Data.DataRow))
  (define-method-port
    equals?
    Mono.Data.SqlExpressions.In
    Equals
    (System.Boolean System.Object)))
