(library (system xml xpath xpath-function-round)
  (export new
          is?
          xpath-function-round?
          evaluate
          to-string
          has-static-value?
          static-value-as-number)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.XPathFunctionRound a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.XPathFunctionRound a))
  (define (xpath-function-round? a)
    (clr-is System.Xml.XPath.XPathFunctionRound a))
  (define-method-port
    evaluate
    System.Xml.XPath.XPathFunctionRound
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.XPathFunctionRound
    ToString
    (System.String))
  (define-field-port
    has-static-value?
    #f
    #f
    (property:)
    System.Xml.XPath.XPathFunctionRound
    HasStaticValue
    System.Boolean)
  (define-field-port
    static-value-as-number
    #f
    #f
    (property:)
    System.Xml.XPath.XPathFunctionRound
    StaticValueAsNumber
    System.Double))
