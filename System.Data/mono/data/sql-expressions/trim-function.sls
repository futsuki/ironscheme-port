(library (mono data sql-expressions trim-function)
  (export new is? trim-function? eval)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Data.SqlExpressions.TrimFunction a ...)))))
  (define (is? a) (clr-is Mono.Data.SqlExpressions.TrimFunction a))
  (define (trim-function? a)
    (clr-is Mono.Data.SqlExpressions.TrimFunction a))
  (define-method-port
    eval
    Mono.Data.SqlExpressions.TrimFunction
    Eval
    (System.Object System.Data.DataRow)))
