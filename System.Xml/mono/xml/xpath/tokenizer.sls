(library (mono xml xpath tokenizer)
  (export new is? tokenizer? token advance? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.XPath.Tokenizer a ...)))))
  (define (is? a) (clr-is Mono.Xml.XPath.Tokenizer a))
  (define (tokenizer? a) (clr-is Mono.Xml.XPath.Tokenizer a))
  (define-method-port
    token
    Mono.Xml.XPath.Tokenizer
    token
    (System.Int32))
  (define-method-port
    advance?
    Mono.Xml.XPath.Tokenizer
    advance
    (System.Boolean))
  (define-method-port
    value
    Mono.Xml.XPath.Tokenizer
    value
    (System.Object)))
