(library (mono xml xsl operations xsl-fallback)
  (export new is? xsl-fallback? evaluate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Xsl.Operations.XslFallback a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.Operations.XslFallback a))
  (define (xsl-fallback? a)
    (clr-is Mono.Xml.Xsl.Operations.XslFallback a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.Operations.XslFallback
    Evaluate
    (System.Void Mono.Xml.Xsl.XslTransformProcessor)))
