(library (mono xml xsl xslt-element-available)
  (export new is? xslt-element-available? evaluate return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Xsl.XsltElementAvailable a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.XsltElementAvailable a))
  (define (xslt-element-available? a)
    (clr-is Mono.Xml.Xsl.XsltElementAvailable a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.XsltElementAvailable
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XsltElementAvailable
    ReturnType
    System.Xml.XPath.XPathResultType))
