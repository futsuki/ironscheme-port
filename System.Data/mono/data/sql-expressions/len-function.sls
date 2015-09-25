(library (mono data sql-expressions len-function)
  (export new is? len-function? eval)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Data.SqlExpressions.LenFunction a ...)))))
  (define (is? a) (clr-is Mono.Data.SqlExpressions.LenFunction a))
  (define (len-function? a)
    (clr-is Mono.Data.SqlExpressions.LenFunction a))
  (define-method-port
    eval
    Mono.Data.SqlExpressions.LenFunction
    Eval
    (System.Object System.Data.DataRow)))
