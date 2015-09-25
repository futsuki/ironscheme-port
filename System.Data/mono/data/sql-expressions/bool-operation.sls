(library (mono data sql-expressions bool-operation)
  (export new is? bool-operation? eval-boolean? eval)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Data.SqlExpressions.BoolOperation a ...)))))
  (define (is? a) (clr-is Mono.Data.SqlExpressions.BoolOperation a))
  (define (bool-operation? a)
    (clr-is Mono.Data.SqlExpressions.BoolOperation a))
  (define-method-port
    eval-boolean?
    Mono.Data.SqlExpressions.BoolOperation
    EvalBoolean
    (System.Boolean System.Data.DataRow))
  (define-method-port
    eval
    Mono.Data.SqlExpressions.BoolOperation
    Eval
    (System.Object System.Data.DataRow)))
