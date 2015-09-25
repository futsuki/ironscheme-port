(library (system xml xpath xpath-document)
  (export new is? xpath-document? create-navigator)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.XPathDocument a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.XPathDocument a))
  (define (xpath-document? a) (clr-is System.Xml.XPath.XPathDocument a))
  (define-method-port
    create-navigator
    System.Xml.XPath.XPathDocument
    CreateNavigator
    (System.Xml.XPath.XPathNavigator)))
