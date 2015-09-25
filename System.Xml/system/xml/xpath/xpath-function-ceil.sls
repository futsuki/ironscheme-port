(library (system xml xpath xpath-function-ceil)
  (export new
          is?
          xpath-function-ceil?
          evaluate
          to-string
          has-static-value?
          static-value-as-number)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.XPathFunctionCeil a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.XPathFunctionCeil a))
  (define (xpath-function-ceil? a)
    (clr-is System.Xml.XPath.XPathFunctionCeil a))
  (define-method-port
    evaluate
    System.Xml.XPath.XPathFunctionCeil
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.XPathFunctionCeil
    ToString
    (System.String))
  (define-field-port
    has-static-value?
    #f
    #f
    (property:)
    System.Xml.XPath.XPathFunctionCeil
    HasStaticValue
    System.Boolean)
  (define-field-port
    static-value-as-number
    #f
    #f
    (property:)
    System.Xml.XPath.XPathFunctionCeil
    StaticValueAsNumber
    System.Double))
