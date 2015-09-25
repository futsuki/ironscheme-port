(library (system xml xpath simple-iterator)
  (export new is? simple-iterator? move-next? current)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.SimpleIterator a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.SimpleIterator a))
  (define (simple-iterator? a)
    (clr-is System.Xml.XPath.SimpleIterator a))
  (define-method-port
    move-next?
    System.Xml.XPath.SimpleIterator
    MoveNext
    (System.Boolean))
  (define-field-port
    current
    #f
    #f
    (property:)
    System.Xml.XPath.SimpleIterator
    Current
    System.Xml.XPath.XPathNavigator))
