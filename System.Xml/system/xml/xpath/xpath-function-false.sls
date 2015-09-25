(library (system xml xpath xpath-function-false)
  (export new
          is?
          xpath-function-false?
          evaluate
          to-string
          has-static-value?
          static-value-as-boolean?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.XPathFunctionFalse a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.XPathFunctionFalse a))
  (define (xpath-function-false? a)
    (clr-is System.Xml.XPath.XPathFunctionFalse a))
  (define-method-port
    evaluate
    System.Xml.XPath.XPathFunctionFalse
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.XPathFunctionFalse
    ToString
    (System.String))
  (define-field-port
    has-static-value?
    #f
    #f
    (property:)
    System.Xml.XPath.XPathFunctionFalse
    HasStaticValue
    System.Boolean)
  (define-field-port
    static-value-as-boolean?
    #f
    #f
    (property:)
    System.Xml.XPath.XPathFunctionFalse
    StaticValueAsBoolean
    System.Boolean))
