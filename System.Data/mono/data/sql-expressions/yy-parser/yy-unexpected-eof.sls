(library (mono data sql-expressions yy-parser yy-unexpected-eof)
  (export new is? yy-unexpected-eof?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Data.SqlExpressions.yyParser.yyUnexpectedEof
             a
             ...)))))
  (define (is? a)
    (clr-is Mono.Data.SqlExpressions.yyParser.yyUnexpectedEof a))
  (define (yy-unexpected-eof? a)
    (clr-is Mono.Data.SqlExpressions.yyParser.yyUnexpectedEof a)))
