(library (mono xml xsl operations xsl-global-param)
  (export new is? xsl-global-param? override is-param?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Xsl.Operations.XslGlobalParam a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.Operations.XslGlobalParam a))
  (define (xsl-global-param? a)
    (clr-is Mono.Xml.Xsl.Operations.XslGlobalParam a))
  (define-method-port
    override
    Mono.Xml.Xsl.Operations.XslGlobalParam
    Override
    (System.Void Mono.Xml.Xsl.XslTransformProcessor System.Object))
  (define-field-port
    is-param?
    #f
    #f
    (property:)
    Mono.Xml.Xsl.Operations.XslGlobalParam
    IsParam
    System.Boolean))
