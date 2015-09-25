(library (system xml xpath xpath-function)
  (export new is? xpath-function?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.XPathFunction a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.XPathFunction a))
  (define (xpath-function? a)
    (clr-is System.Xml.XPath.XPathFunction a)))
