(library (system xml xpath xpath-function-sum)
  (export new is? xpath-function-sum? evaluate to-string)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.XPathFunctionSum a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.XPathFunctionSum a))
  (define (xpath-function-sum? a)
    (clr-is System.Xml.XPath.XPathFunctionSum a))
  (define-method-port
    evaluate
    System.Xml.XPath.XPathFunctionSum
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.XPathFunctionSum
    ToString
    (System.String)))
