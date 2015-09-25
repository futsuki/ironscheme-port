(library (mono data sql-expressions is-null-function)
  (export new is? is-null-function? get-hash-code eval equals?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Data.SqlExpressions.IsNullFunction a ...)))))
  (define (is? a) (clr-is Mono.Data.SqlExpressions.IsNullFunction a))
  (define (is-null-function? a)
    (clr-is Mono.Data.SqlExpressions.IsNullFunction a))
  (define-method-port
    get-hash-code
    Mono.Data.SqlExpressions.IsNullFunction
    GetHashCode
    (System.Int32))
  (define-method-port
    eval
    Mono.Data.SqlExpressions.IsNullFunction
    Eval
    (System.Object System.Data.DataRow))
  (define-method-port
    equals?
    Mono.Data.SqlExpressions.IsNullFunction
    Equals
    (System.Boolean System.Object)))
