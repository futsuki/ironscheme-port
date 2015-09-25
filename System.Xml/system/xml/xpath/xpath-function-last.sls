(library (system xml xpath xpath-function-last)
  (export new is? xpath-function-last? evaluate to-string return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.XPathFunctionLast a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.XPathFunctionLast a))
  (define (xpath-function-last? a)
    (clr-is System.Xml.XPath.XPathFunctionLast a))
  (define-method-port
    evaluate
    System.Xml.XPath.XPathFunctionLast
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.XPathFunctionLast
    ToString
    (System.String))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.XPathFunctionLast
    ReturnType
    System.Xml.XPath.XPathResultType))
