(library (mono xml xsl operations xsl-variable-information)
  (export new is? xsl-variable-information? evaluate name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Xml.Xsl.Operations.XslVariableInformation
             a
             ...)))))
  (define (is? a)
    (clr-is Mono.Xml.Xsl.Operations.XslVariableInformation a))
  (define (xsl-variable-information? a)
    (clr-is Mono.Xml.Xsl.Operations.XslVariableInformation a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.Operations.XslVariableInformation
    Evaluate
    (System.Object Mono.Xml.Xsl.XslTransformProcessor))
  (define-field-port
    name
    #f
    #f
    (property:)
    Mono.Xml.Xsl.Operations.XslVariableInformation
    Name
    System.Xml.XmlQualifiedName))
