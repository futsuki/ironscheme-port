(library (mono xml xsl operations xsl-for-each)
  (export new is? xsl-for-each? evaluate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Xsl.Operations.XslForEach a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.Operations.XslForEach a))
  (define (xsl-for-each? a)
    (clr-is Mono.Xml.Xsl.Operations.XslForEach a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.Operations.XslForEach
    Evaluate
    (System.Void Mono.Xml.Xsl.XslTransformProcessor)))
