(library (mono xml xsl operations xsl-text)
  (export new is? xsl-text? evaluate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.Operations.XslText a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.Operations.XslText a))
  (define (xsl-text? a) (clr-is Mono.Xml.Xsl.Operations.XslText a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.Operations.XslText
    Evaluate
    (System.Void Mono.Xml.Xsl.XslTransformProcessor)))
