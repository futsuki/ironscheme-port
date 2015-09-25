(library (mono xml xsl xslt-current)
  (export new is? xslt-current? evaluate to-string return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.XsltCurrent a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.XsltCurrent a))
  (define (xslt-current? a) (clr-is Mono.Xml.Xsl.XsltCurrent a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.XsltCurrent
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    Mono.Xml.Xsl.XsltCurrent
    ToString
    (System.String))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XsltCurrent
    ReturnType
    System.Xml.XPath.XPathResultType))
