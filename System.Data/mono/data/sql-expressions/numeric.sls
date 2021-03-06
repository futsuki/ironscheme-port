(library (mono data sql-expressions numeric)
  (export new is? numeric?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Data.SqlExpressions.Numeric a ...)))))
  (define (is? a) (clr-is Mono.Data.SqlExpressions.Numeric a))
  (define (numeric? a) (clr-is Mono.Data.SqlExpressions.Numeric a)))
