(library (mono xml xsl xslt-function-available)
  (export new is? xslt-function-available? evaluate return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Xsl.XsltFunctionAvailable a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.XsltFunctionAvailable a))
  (define (xslt-function-available? a)
    (clr-is Mono.Xml.Xsl.XsltFunctionAvailable a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.XsltFunctionAvailable
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XsltFunctionAvailable
    ReturnType
    System.Xml.XPath.XPathResultType))
