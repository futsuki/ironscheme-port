(library (system xml xpath xpath-function-true)
  (export new
          is?
          xpath-function-true?
          evaluate
          to-string
          has-static-value?
          static-value-as-boolean?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.XPathFunctionTrue a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.XPathFunctionTrue a))
  (define (xpath-function-true? a)
    (clr-is System.Xml.XPath.XPathFunctionTrue a))
  (define-method-port
    evaluate
    System.Xml.XPath.XPathFunctionTrue
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.XPathFunctionTrue
    ToString
    (System.String))
  (define-field-port
    has-static-value?
    #f
    #f
    (property:)
    System.Xml.XPath.XPathFunctionTrue
    HasStaticValue
    System.Boolean)
  (define-field-port
    static-value-as-boolean?
    #f
    #f
    (property:)
    System.Xml.XPath.XPathFunctionTrue
    StaticValueAsBoolean
    System.Boolean))
