(library (mono xml xsl operations xsl-attribute)
  (export new is? xsl-attribute? evaluate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Xsl.Operations.XslAttribute a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.Operations.XslAttribute a))
  (define (xsl-attribute? a)
    (clr-is Mono.Xml.Xsl.Operations.XslAttribute a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.Operations.XslAttribute
    Evaluate
    (System.Void Mono.Xml.Xsl.XslTransformProcessor)))
