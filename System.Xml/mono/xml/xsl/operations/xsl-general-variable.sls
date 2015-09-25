(library (mono xml xsl operations xsl-general-variable)
  (export new
          is?
          xsl-general-variable?
          evaluate
          name
          variable-type
          is-local?
          is-param?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Xml.Xsl.Operations.XslGeneralVariable
             a
             ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.Operations.XslGeneralVariable a))
  (define (xsl-general-variable? a)
    (clr-is Mono.Xml.Xsl.Operations.XslGeneralVariable a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.Operations.XslGeneralVariable
    Evaluate
    (System.Object System.Xml.Xsl.XsltContext)
    (System.Void Mono.Xml.Xsl.XslTransformProcessor))
  (define-field-port
    name
    #f
    #f
    (property:)
    Mono.Xml.Xsl.Operations.XslGeneralVariable
    Name
    System.Xml.XmlQualifiedName)
  (define-field-port
    variable-type
    #f
    #f
    (property:)
    Mono.Xml.Xsl.Operations.XslGeneralVariable
    VariableType
    System.Xml.XPath.XPathResultType)
  (define-field-port
    is-local?
    #f
    #f
    (property:)
    Mono.Xml.Xsl.Operations.XslGeneralVariable
    IsLocal
    System.Boolean)
  (define-field-port
    is-param?
    #f
    #f
    (property:)
    Mono.Xml.Xsl.Operations.XslGeneralVariable
    IsParam
    System.Boolean))
