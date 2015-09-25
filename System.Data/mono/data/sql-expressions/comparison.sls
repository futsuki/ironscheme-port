(library (mono data sql-expressions comparison)
  (export new is? comparison? eval-boolean? eval)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Data.SqlExpressions.Comparison a ...)))))
  (define (is? a) (clr-is Mono.Data.SqlExpressions.Comparison a))
  (define (comparison? a)
    (clr-is Mono.Data.SqlExpressions.Comparison a))
  (define-method-port
    eval-boolean?
    Mono.Data.SqlExpressions.Comparison
    EvalBoolean
    (System.Boolean System.Data.DataRow))
  (define-method-port
    eval
    Mono.Data.SqlExpressions.Comparison
    Eval
    (System.Object System.Data.DataRow)))
