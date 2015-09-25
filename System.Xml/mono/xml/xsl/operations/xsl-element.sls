(library (mono xml xsl operations xsl-element)
  (export new is? xsl-element? evaluate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Xsl.Operations.XslElement a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.Operations.XslElement a))
  (define (xsl-element? a)
    (clr-is Mono.Xml.Xsl.Operations.XslElement a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.Operations.XslElement
    Evaluate
    (System.Void Mono.Xml.Xsl.XslTransformProcessor)))
