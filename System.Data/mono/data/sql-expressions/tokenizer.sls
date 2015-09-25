(library (mono data sql-expressions tokenizer)
  (export new is? tokenizer? token advance? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Data.SqlExpressions.Tokenizer a ...)))))
  (define (is? a) (clr-is Mono.Data.SqlExpressions.Tokenizer a))
  (define (tokenizer? a) (clr-is Mono.Data.SqlExpressions.Tokenizer a))
  (define-method-port
    token
    Mono.Data.SqlExpressions.Tokenizer
    token
    (System.Int32))
  (define-method-port
    advance?
    Mono.Data.SqlExpressions.Tokenizer
    advance
    (System.Boolean))
  (define-method-port
    value
    Mono.Data.SqlExpressions.Tokenizer
    value
    (System.Object)))
