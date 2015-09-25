(library (mono xml xsl xslt-system-property)
  (export new is? xslt-system-property? evaluate return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.XsltSystemProperty a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.XsltSystemProperty a))
  (define (xslt-system-property? a)
    (clr-is Mono.Xml.Xsl.XsltSystemProperty a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.XsltSystemProperty
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XsltSystemProperty
    ReturnType
    System.Xml.XPath.XPathResultType))
