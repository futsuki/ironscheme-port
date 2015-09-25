(library (system xml xpath xpath-function-contains)
  (export new
          is?
          xpath-function-contains?
          evaluate
          to-string
          return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.XPathFunctionContains a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.XPathFunctionContains a))
  (define (xpath-function-contains? a)
    (clr-is System.Xml.XPath.XPathFunctionContains a))
  (define-method-port
    evaluate
    System.Xml.XPath.XPathFunctionContains
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.XPathFunctionContains
    ToString
    (System.String))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.XPathFunctionContains
    ReturnType
    System.Xml.XPath.XPathResultType))
