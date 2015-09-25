(library (mono xml xsl operations xsl-not-supported-operation)
  (export new is? xsl-not-supported-operation? evaluate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Xml.Xsl.Operations.XslNotSupportedOperation
             a
             ...)))))
  (define (is? a)
    (clr-is Mono.Xml.Xsl.Operations.XslNotSupportedOperation a))
  (define (xsl-not-supported-operation? a)
    (clr-is Mono.Xml.Xsl.Operations.XslNotSupportedOperation a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.Operations.XslNotSupportedOperation
    Evaluate
    (System.Void Mono.Xml.Xsl.XslTransformProcessor)))
