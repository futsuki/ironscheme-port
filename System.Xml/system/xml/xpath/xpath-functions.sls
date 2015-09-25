(library (system xml xpath xpath-functions)
  (export new is? xpath-functions? to-number to-string to-boolean?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.XPathFunctions a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.XPathFunctions a))
  (define (xpath-functions? a)
    (clr-is System.Xml.XPath.XPathFunctions a))
  (define-method-port
    to-number
    System.Xml.XPath.XPathFunctions
    ToNumber
    (static: System.Double System.String)
    (static: System.Double System.Object))
  (define-method-port
    to-string
    System.Xml.XPath.XPathFunctions
    ToString
    (static: System.String System.Double)
    (static: System.String System.Object))
  (define-method-port
    to-boolean?
    System.Xml.XPath.XPathFunctions
    ToBoolean
    (static: System.Boolean System.Xml.XPath.BaseIterator)
    (static: System.Boolean System.String)
    (static: System.Boolean System.Double)
    (static: System.Boolean System.Boolean)
    (static: System.Boolean System.Object)))
