(library (system xml xpath xpath-function-boolean)
  (export new is? xpath-function-boolean? evaluate to-string)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.XPathFunctionBoolean a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.XPathFunctionBoolean a))
  (define (xpath-function-boolean? a)
    (clr-is System.Xml.XPath.XPathFunctionBoolean a))
  (define-method-port
    evaluate
    System.Xml.XPath.XPathFunctionBoolean
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.XPathFunctionBoolean
    ToString
    (System.String)))
