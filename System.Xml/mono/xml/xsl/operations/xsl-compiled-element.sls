(library (mono xml xsl operations xsl-compiled-element)
  (export new is? xsl-compiled-element?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Xml.Xsl.Operations.XslCompiledElement
             a
             ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.Operations.XslCompiledElement a))
  (define (xsl-compiled-element? a)
    (clr-is Mono.Xml.Xsl.Operations.XslCompiledElement a)))
