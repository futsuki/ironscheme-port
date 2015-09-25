(library (mono xml xsl operations xsl-copy-of)
  (export new is? xsl-copy-of? evaluate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Xsl.Operations.XslCopyOf a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.Operations.XslCopyOf a))
  (define (xsl-copy-of? a) (clr-is Mono.Xml.Xsl.Operations.XslCopyOf a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.Operations.XslCopyOf
    Evaluate
    (System.Void Mono.Xml.Xsl.XslTransformProcessor)))
