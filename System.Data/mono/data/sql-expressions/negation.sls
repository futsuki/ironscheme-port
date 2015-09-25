(library (mono data sql-expressions negation)
  (export new is? negation? eval-boolean? eval)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Data.SqlExpressions.Negation a ...)))))
  (define (is? a) (clr-is Mono.Data.SqlExpressions.Negation a))
  (define (negation? a) (clr-is Mono.Data.SqlExpressions.Negation a))
  (define-method-port
    eval-boolean?
    Mono.Data.SqlExpressions.Negation
    EvalBoolean
    (System.Boolean System.Data.DataRow))
  (define-method-port
    eval
    Mono.Data.SqlExpressions.Negation
    Eval
    (System.Object System.Data.DataRow)))
