(library (mono data sql-expressions concat-function)
  (export new is? concat-function? get-hash-code eval equals?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Data.SqlExpressions.ConcatFunction a ...)))))
  (define (is? a) (clr-is Mono.Data.SqlExpressions.ConcatFunction a))
  (define (concat-function? a)
    (clr-is Mono.Data.SqlExpressions.ConcatFunction a))
  (define-method-port
    get-hash-code
    Mono.Data.SqlExpressions.ConcatFunction
    GetHashCode
    (System.Int32))
  (define-method-port
    eval
    Mono.Data.SqlExpressions.ConcatFunction
    Eval
    (System.Object System.Data.DataRow))
  (define-method-port
    equals?
    Mono.Data.SqlExpressions.ConcatFunction
    Equals
    (System.Boolean System.Object)))
