(library (system xml xpath xpath-function-not)
  (export new is? xpath-function-not? evaluate to-string)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.XPathFunctionNot a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.XPathFunctionNot a))
  (define (xpath-function-not? a)
    (clr-is System.Xml.XPath.XPathFunctionNot a))
  (define-method-port
    evaluate
    System.Xml.XPath.XPathFunctionNot
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.XPathFunctionNot
    ToString
    (System.String)))
