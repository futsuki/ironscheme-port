(library (system xml xpath union-iterator)
  (export new is? union-iterator? move-next-core? clone current)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.UnionIterator a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.UnionIterator a))
  (define (union-iterator? a) (clr-is System.Xml.XPath.UnionIterator a))
  (define-method-port
    move-next-core?
    System.Xml.XPath.UnionIterator
    MoveNextCore
    (System.Boolean))
  (define-method-port
    clone
    System.Xml.XPath.UnionIterator
    Clone
    (System.Xml.XPath.XPathNodeIterator))
  (define-field-port
    current
    #f
    #f
    (property:)
    System.Xml.XPath.UnionIterator
    Current
    System.Xml.XPath.XPathNavigator))
