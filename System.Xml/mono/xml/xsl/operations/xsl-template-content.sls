(library (mono xml xsl operations xsl-template-content)
  (export new is? xsl-template-content? evaluate parent-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Xml.Xsl.Operations.XslTemplateContent
             a
             ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.Operations.XslTemplateContent a))
  (define (xsl-template-content? a)
    (clr-is Mono.Xml.Xsl.Operations.XslTemplateContent a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.Operations.XslTemplateContent
    Evaluate
    (System.Void Mono.Xml.Xsl.XslTransformProcessor))
  (define-field-port
    parent-type
    #f
    #f
    (property:)
    Mono.Xml.Xsl.Operations.XslTemplateContent
    ParentType
    System.Xml.XPath.XPathNodeType))
