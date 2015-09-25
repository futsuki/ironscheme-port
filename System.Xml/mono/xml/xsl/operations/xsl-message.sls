(library (mono xml xsl operations xsl-message)
  (export new is? xsl-message? evaluate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Xsl.Operations.XslMessage a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.Operations.XslMessage a))
  (define (xsl-message? a)
    (clr-is Mono.Xml.Xsl.Operations.XslMessage a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.Operations.XslMessage
    Evaluate
    (System.Void Mono.Xml.Xsl.XslTransformProcessor)))
