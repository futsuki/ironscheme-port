(library (mono xml xsl operations xsl-choose)
  (export new is? xsl-choose? evaluate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Xsl.Operations.XslChoose a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.Operations.XslChoose a))
  (define (xsl-choose? a) (clr-is Mono.Xml.Xsl.Operations.XslChoose a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.Operations.XslChoose
    Evaluate
    (System.Void Mono.Xml.Xsl.XslTransformProcessor)))
