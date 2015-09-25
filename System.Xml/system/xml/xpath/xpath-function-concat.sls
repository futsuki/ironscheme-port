(library (system xml xpath xpath-function-concat)
  (export new is? xpath-function-concat? evaluate to-string return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.XPathFunctionConcat a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.XPathFunctionConcat a))
  (define (xpath-function-concat? a)
    (clr-is System.Xml.XPath.XPathFunctionConcat a))
  (define-method-port
    evaluate
    System.Xml.XPath.XPathFunctionConcat
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.XPathFunctionConcat
    ToString
    (System.String))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.XPathFunctionConcat
    ReturnType
    System.Xml.XPath.XPathResultType))
