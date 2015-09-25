(library (mono data sql-expressions substring-function)
  (export new is? substring-function? get-hash-code eval equals?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Data.SqlExpressions.SubstringFunction
             a
             ...)))))
  (define (is? a) (clr-is Mono.Data.SqlExpressions.SubstringFunction a))
  (define (substring-function? a)
    (clr-is Mono.Data.SqlExpressions.SubstringFunction a))
  (define-method-port
    get-hash-code
    Mono.Data.SqlExpressions.SubstringFunction
    GetHashCode
    (System.Int32))
  (define-method-port
    eval
    Mono.Data.SqlExpressions.SubstringFunction
    Eval
    (System.Object System.Data.DataRow))
  (define-method-port
    equals?
    Mono.Data.SqlExpressions.SubstringFunction
    Equals
    (System.Boolean System.Object)))
