(library (system xml xpath xpath-function-name)
  (export new is? xpath-function-name? evaluate to-string return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.XPathFunctionName a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.XPathFunctionName a))
  (define (xpath-function-name? a)
    (clr-is System.Xml.XPath.XPathFunctionName a))
  (define-method-port
    evaluate
    System.Xml.XPath.XPathFunctionName
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.XPathFunctionName
    ToString
    (System.String))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.XPathFunctionName
    ReturnType
    System.Xml.XPath.XPathResultType))
