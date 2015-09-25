(library (mono data sql-expressions like)
  (export new is? like? get-hash-code eval-boolean? eval equals?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Data.SqlExpressions.Like a ...)))))
  (define (is? a) (clr-is Mono.Data.SqlExpressions.Like a))
  (define (like? a) (clr-is Mono.Data.SqlExpressions.Like a))
  (define-method-port
    get-hash-code
    Mono.Data.SqlExpressions.Like
    GetHashCode
    (System.Int32))
  (define-method-port
    eval-boolean?
    Mono.Data.SqlExpressions.Like
    EvalBoolean
    (System.Boolean System.Data.DataRow))
  (define-method-port
    eval
    Mono.Data.SqlExpressions.Like
    Eval
    (System.Object System.Data.DataRow))
  (define-method-port
    equals?
    Mono.Data.SqlExpressions.Like
    Equals
    (System.Boolean System.Object)))
