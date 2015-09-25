(library (system xml xpath ordered-iterator)
  (export new is? ordered-iterator? move-next-core? clone current)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.OrderedIterator a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.OrderedIterator a))
  (define (ordered-iterator? a)
    (clr-is System.Xml.XPath.OrderedIterator a))
  (define-method-port
    move-next-core?
    System.Xml.XPath.OrderedIterator
    MoveNextCore
    (System.Boolean))
  (define-method-port
    clone
    System.Xml.XPath.OrderedIterator
    Clone
    (System.Xml.XPath.XPathNodeIterator))
  (define-field-port
    current
    #f
    #f
    (property:)
    System.Xml.XPath.OrderedIterator
    Current
    System.Xml.XPath.XPathNavigator))
