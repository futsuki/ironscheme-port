(library (mono data sql-expressions arithmetic-operation)
  (export new is? arithmetic-operation? eval)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Data.SqlExpressions.ArithmeticOperation
             a
             ...)))))
  (define (is? a)
    (clr-is Mono.Data.SqlExpressions.ArithmeticOperation a))
  (define (arithmetic-operation? a)
    (clr-is Mono.Data.SqlExpressions.ArithmeticOperation a))
  (define-method-port
    eval
    Mono.Data.SqlExpressions.ArithmeticOperation
    Eval
    (System.Object System.Data.DataRow)))
