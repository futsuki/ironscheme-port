(library (mono xml xsl operations xsl-global-variable)
  (export new is? xsl-global-variable? evaluate is-local? is-param?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Xsl.Operations.XslGlobalVariable a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.Operations.XslGlobalVariable a))
  (define (xsl-global-variable? a)
    (clr-is Mono.Xml.Xsl.Operations.XslGlobalVariable a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.Operations.XslGlobalVariable
    Evaluate
    (System.Void Mono.Xml.Xsl.XslTransformProcessor))
  (define-field-port
    is-local?
    #f
    #f
    (property:)
    Mono.Xml.Xsl.Operations.XslGlobalVariable
    IsLocal
    System.Boolean)
  (define-field-port
    is-param?
    #f
    #f
    (property:)
    Mono.Xml.Xsl.Operations.XslGlobalVariable
    IsParam
    System.Boolean))
