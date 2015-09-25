(library (system xml xpath xpath-function-count)
  (export new
          is?
          xpath-function-count?
          evaluate
          to-string
          evaluate-boolean?
          return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.XPathFunctionCount a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.XPathFunctionCount a))
  (define (xpath-function-count? a)
    (clr-is System.Xml.XPath.XPathFunctionCount a))
  (define-method-port
    evaluate
    System.Xml.XPath.XPathFunctionCount
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.XPathFunctionCount
    ToString
    (System.String))
  (define-method-port
    evaluate-boolean?
    System.Xml.XPath.XPathFunctionCount
    EvaluateBoolean
    (System.Boolean System.Xml.XPath.BaseIterator))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.XPathFunctionCount
    ReturnType
    System.Xml.XPath.XPathResultType))
