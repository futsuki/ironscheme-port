(library (mono data sql-expressions convert-function)
  (export new is? convert-function? get-hash-code eval equals?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Data.SqlExpressions.ConvertFunction a ...)))))
  (define (is? a) (clr-is Mono.Data.SqlExpressions.ConvertFunction a))
  (define (convert-function? a)
    (clr-is Mono.Data.SqlExpressions.ConvertFunction a))
  (define-method-port
    get-hash-code
    Mono.Data.SqlExpressions.ConvertFunction
    GetHashCode
    (System.Int32))
  (define-method-port
    eval
    Mono.Data.SqlExpressions.ConvertFunction
    Eval
    (System.Object System.Data.DataRow))
  (define-method-port
    equals?
    Mono.Data.SqlExpressions.ConvertFunction
    Equals
    (System.Boolean System.Object)))
