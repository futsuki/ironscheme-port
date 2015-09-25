(library (mono xml xsl tokenizer)
  (export new is? tokenizer? token advance? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.Tokenizer a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.Tokenizer a))
  (define (tokenizer? a) (clr-is Mono.Xml.Xsl.Tokenizer a))
  (define-method-port token Mono.Xml.Xsl.Tokenizer token (System.Int32))
  (define-method-port
    advance?
    Mono.Xml.Xsl.Tokenizer
    advance
    (System.Boolean))
  (define-method-port
    value
    Mono.Xml.Xsl.Tokenizer
    value
    (System.Object)))
