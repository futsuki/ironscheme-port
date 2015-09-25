(library (system xml xpath child-iterator)
  (export new is? child-iterator? move-next-core? clone current)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.ChildIterator a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.ChildIterator a))
  (define (child-iterator? a) (clr-is System.Xml.XPath.ChildIterator a))
  (define-method-port
    move-next-core?
    System.Xml.XPath.ChildIterator
    MoveNextCore
    (System.Boolean))
  (define-method-port
    clone
    System.Xml.XPath.ChildIterator
    Clone
    (System.Xml.XPath.XPathNodeIterator))
  (define-field-port
    current
    #f
    #f
    (property:)
    System.Xml.XPath.ChildIterator
    Current
    System.Xml.XPath.XPathNavigator))
