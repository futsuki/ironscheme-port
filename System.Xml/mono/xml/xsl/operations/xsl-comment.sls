(library (mono xml xsl operations xsl-comment)
  (export new is? xsl-comment? evaluate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Xsl.Operations.XslComment a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.Operations.XslComment a))
  (define (xsl-comment? a)
    (clr-is Mono.Xml.Xsl.Operations.XslComment a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.Operations.XslComment
    Evaluate
    (System.Void Mono.Xml.Xsl.XslTransformProcessor)))
