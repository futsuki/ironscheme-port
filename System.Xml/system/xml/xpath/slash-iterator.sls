(library (system xml xpath slash-iterator)
  (export new is? slash-iterator? move-next-core? clone current)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.SlashIterator a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.SlashIterator a))
  (define (slash-iterator? a) (clr-is System.Xml.XPath.SlashIterator a))
  (define-method-port
    move-next-core?
    System.Xml.XPath.SlashIterator
    MoveNextCore
    (System.Boolean))
  (define-method-port
    clone
    System.Xml.XPath.SlashIterator
    Clone
    (System.Xml.XPath.XPathNodeIterator))
  (define-field-port
    current
    #f
    #f
    (property:)
    System.Xml.XPath.SlashIterator
    Current
    System.Xml.XPath.XPathNavigator))
