(library (mono xml xsl operations xsl-number)
  (export new is? xsl-number? round evaluate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Xsl.Operations.XslNumber a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.Operations.XslNumber a))
  (define (xsl-number? a) (clr-is Mono.Xml.Xsl.Operations.XslNumber a))
  (define-method-port
    round
    Mono.Xml.Xsl.Operations.XslNumber
    Round
    (static: System.Double System.Double))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.Operations.XslNumber
    Evaluate
    (System.Void Mono.Xml.Xsl.XslTransformProcessor)))
