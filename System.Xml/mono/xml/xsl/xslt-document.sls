(library (mono xml xsl xslt-document)
  (export new is? xslt-document? evaluate to-string return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.XsltDocument a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.XsltDocument a))
  (define (xslt-document? a) (clr-is Mono.Xml.Xsl.XsltDocument a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.XsltDocument
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    Mono.Xml.Xsl.XsltDocument
    ToString
    (System.String))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XsltDocument
    ReturnType
    System.Xml.XPath.XPathResultType))
