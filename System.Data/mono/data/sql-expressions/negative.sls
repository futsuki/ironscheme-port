(library (mono data sql-expressions negative)
  (export new is? negative? eval)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Data.SqlExpressions.Negative a ...)))))
  (define (is? a) (clr-is Mono.Data.SqlExpressions.Negative a))
  (define (negative? a) (clr-is Mono.Data.SqlExpressions.Negative a))
  (define-method-port
    eval
    Mono.Data.SqlExpressions.Negative
    Eval
    (System.Object System.Data.DataRow)))
