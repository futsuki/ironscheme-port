(library (mono data sql-expressions yy-parser yy-exception)
  (export new is? yy-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Data.SqlExpressions.yyParser.yyException
             a
             ...)))))
  (define (is? a)
    (clr-is Mono.Data.SqlExpressions.yyParser.yyException a))
  (define (yy-exception? a)
    (clr-is Mono.Data.SqlExpressions.yyParser.yyException a)))
