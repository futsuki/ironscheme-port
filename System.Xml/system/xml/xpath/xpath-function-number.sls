(library (system xml xpath xpath-function-number)
  (export new
          is?
          xpath-function-number?
          optimize
          evaluate
          to-string
          has-static-value?
          static-value-as-number)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.XPathFunctionNumber a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.XPathFunctionNumber a))
  (define (xpath-function-number? a)
    (clr-is System.Xml.XPath.XPathFunctionNumber a))
  (define-method-port
    optimize
    System.Xml.XPath.XPathFunctionNumber
    Optimize
    (System.Xml.XPath.Expression))
  (define-method-port
    evaluate
    System.Xml.XPath.XPathFunctionNumber
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.XPathFunctionNumber
    ToString
    (System.String))
  (define-field-port
    has-static-value?
    #f
    #f
    (property:)
    System.Xml.XPath.XPathFunctionNumber
    HasStaticValue
    System.Boolean)
  (define-field-port
    static-value-as-number
    #f
    #f
    (property:)
    System.Xml.XPath.XPathFunctionNumber
    StaticValueAsNumber
    System.Double))
