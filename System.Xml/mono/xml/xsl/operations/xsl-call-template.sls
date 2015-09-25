(library (mono xml xsl operations xsl-call-template)
  (export new is? xsl-call-template? evaluate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Xsl.Operations.XslCallTemplate a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.Operations.XslCallTemplate a))
  (define (xsl-call-template? a)
    (clr-is Mono.Xml.Xsl.Operations.XslCallTemplate a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.Operations.XslCallTemplate
    Evaluate
    (System.Void Mono.Xml.Xsl.XslTransformProcessor)))
