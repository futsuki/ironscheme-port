(library (mono xml xsl operations xsl-copy)
  (export new is? xsl-copy? evaluate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.Operations.XslCopy a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.Operations.XslCopy a))
  (define (xsl-copy? a) (clr-is Mono.Xml.Xsl.Operations.XslCopy a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.Operations.XslCopy
    Evaluate
    (System.Void Mono.Xml.Xsl.XslTransformProcessor)))
