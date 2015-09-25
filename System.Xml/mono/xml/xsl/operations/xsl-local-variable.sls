(library (mono xml xsl operations xsl-local-variable)
  (export new
          is?
          xsl-local-variable?
          is-evaluated?
          evaluate
          is-local?
          is-param?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Xsl.Operations.XslLocalVariable a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.Operations.XslLocalVariable a))
  (define (xsl-local-variable? a)
    (clr-is Mono.Xml.Xsl.Operations.XslLocalVariable a))
  (define-method-port
    is-evaluated?
    Mono.Xml.Xsl.Operations.XslLocalVariable
    IsEvaluated
    (System.Boolean Mono.Xml.Xsl.XslTransformProcessor))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.Operations.XslLocalVariable
    Evaluate
    (System.Void Mono.Xml.Xsl.XslTransformProcessor))
  (define-field-port
    is-local?
    #f
    #f
    (property:)
    Mono.Xml.Xsl.Operations.XslLocalVariable
    IsLocal
    System.Boolean)
  (define-field-port
    is-param?
    #f
    #f
    (property:)
    Mono.Xml.Xsl.Operations.XslLocalVariable
    IsParam
    System.Boolean))
