(library (mono xml xsl debug)
  (export new is? debug?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.Debug a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.Debug a))
  (define (debug? a) (clr-is Mono.Xml.Xsl.Debug a)))
