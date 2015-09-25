(library (mono data sql-expressions iif-function)
  (export new is? iif-function? get-hash-code eval equals?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Data.SqlExpressions.IifFunction a ...)))))
  (define (is? a) (clr-is Mono.Data.SqlExpressions.IifFunction a))
  (define (iif-function? a)
    (clr-is Mono.Data.SqlExpressions.IifFunction a))
  (define-method-port
    get-hash-code
    Mono.Data.SqlExpressions.IifFunction
    GetHashCode
    (System.Int32))
  (define-method-port
    eval
    Mono.Data.SqlExpressions.IifFunction
    Eval
    (System.Object System.Data.DataRow))
  (define-method-port
    equals?
    Mono.Data.SqlExpressions.IifFunction
    Equals
    (System.Boolean System.Object)))
