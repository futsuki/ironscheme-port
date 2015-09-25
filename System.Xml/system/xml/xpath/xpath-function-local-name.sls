(library (system xml xpath xpath-function-local-name)
  (export new
          is?
          xpath-function-local-name?
          evaluate
          to-string
          return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.XPathFunctionLocalName a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.XPathFunctionLocalName a))
  (define (xpath-function-local-name? a)
    (clr-is System.Xml.XPath.XPathFunctionLocalName a))
  (define-method-port
    evaluate
    System.Xml.XPath.XPathFunctionLocalName
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.XPathFunctionLocalName
    ToString
    (System.String))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.XPathFunctionLocalName
    ReturnType
    System.Xml.XPath.XPathResultType))
