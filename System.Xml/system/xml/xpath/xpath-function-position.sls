(library (system xml xpath xpath-function-position)
  (export new
          is?
          xpath-function-position?
          evaluate
          to-string
          return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.XPathFunctionPosition a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.XPathFunctionPosition a))
  (define (xpath-function-position? a)
    (clr-is System.Xml.XPath.XPathFunctionPosition a))
  (define-method-port
    evaluate
    System.Xml.XPath.XPathFunctionPosition
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.XPathFunctionPosition
    ToString
    (System.String))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.XPathFunctionPosition
    ReturnType
    System.Xml.XPath.XPathResultType))
