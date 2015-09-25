(library (mono xml xsl xslt-generate-id)
  (export new is? xslt-generate-id? evaluate return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.XsltGenerateId a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.XsltGenerateId a))
  (define (xslt-generate-id? a) (clr-is Mono.Xml.Xsl.XsltGenerateId a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.XsltGenerateId
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XsltGenerateId
    ReturnType
    System.Xml.XPath.XPathResultType))
