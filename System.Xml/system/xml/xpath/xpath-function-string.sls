(library (system xml xpath xpath-function-string)
  (export new is? xpath-function-string? evaluate to-string return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.XPathFunctionString a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.XPathFunctionString a))
  (define (xpath-function-string? a)
    (clr-is System.Xml.XPath.XPathFunctionString a))
  (define-method-port
    evaluate
    System.Xml.XPath.XPathFunctionString
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.XPathFunctionString
    ToString
    (System.String))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.XPathFunctionString
    ReturnType
    System.Xml.XPath.XPathResultType))
