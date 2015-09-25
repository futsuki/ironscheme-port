(library (mono xml xsl operations xsl-value-of)
  (export new is? xsl-value-of? evaluate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Xsl.Operations.XslValueOf a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.Operations.XslValueOf a))
  (define (xsl-value-of? a)
    (clr-is Mono.Xml.Xsl.Operations.XslValueOf a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.Operations.XslValueOf
    Evaluate
    (System.Void Mono.Xml.Xsl.XslTransformProcessor)))
