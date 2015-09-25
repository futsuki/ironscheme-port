(library (system xml xpath xpath-function-floor)
  (export new
          is?
          xpath-function-floor?
          evaluate
          to-string
          has-static-value?
          static-value-as-number)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.XPathFunctionFloor a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.XPathFunctionFloor a))
  (define (xpath-function-floor? a)
    (clr-is System.Xml.XPath.XPathFunctionFloor a))
  (define-method-port
    evaluate
    System.Xml.XPath.XPathFunctionFloor
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.XPathFunctionFloor
    ToString
    (System.String))
  (define-field-port
    has-static-value?
    #f
    #f
    (property:)
    System.Xml.XPath.XPathFunctionFloor
    HasStaticValue
    System.Boolean)
  (define-field-port
    static-value-as-number
    #f
    #f
    (property:)
    System.Xml.XPath.XPathFunctionFloor
    StaticValueAsNumber
    System.Double))
