(library (mono xml xsl operations xsl-literal-element)
  (export new is? xsl-literal-element? evaluate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Xsl.Operations.XslLiteralElement a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.Operations.XslLiteralElement a))
  (define (xsl-literal-element? a)
    (clr-is Mono.Xml.Xsl.Operations.XslLiteralElement a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.Operations.XslLiteralElement
    Evaluate
    (System.Void Mono.Xml.Xsl.XslTransformProcessor)))
