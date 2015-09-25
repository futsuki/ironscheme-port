(library (mono xml xsl operations xsl-local-param)
  (export new is? xsl-local-param? override evaluate is-param?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Xsl.Operations.XslLocalParam a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.Operations.XslLocalParam a))
  (define (xsl-local-param? a)
    (clr-is Mono.Xml.Xsl.Operations.XslLocalParam a))
  (define-method-port
    override
    Mono.Xml.Xsl.Operations.XslLocalParam
    Override
    (System.Void Mono.Xml.Xsl.XslTransformProcessor System.Object))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.Operations.XslLocalParam
    Evaluate
    (System.Void Mono.Xml.Xsl.XslTransformProcessor))
  (define-field-port
    is-param?
    #f
    #f
    (property:)
    Mono.Xml.Xsl.Operations.XslLocalParam
    IsParam
    System.Boolean))
