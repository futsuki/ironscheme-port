(library (system xml xpath self-iterator)
  (export new is? self-iterator? move-next-core? clone current)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.SelfIterator a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.SelfIterator a))
  (define (self-iterator? a) (clr-is System.Xml.XPath.SelfIterator a))
  (define-method-port
    move-next-core?
    System.Xml.XPath.SelfIterator
    MoveNextCore
    (System.Boolean))
  (define-method-port
    clone
    System.Xml.XPath.SelfIterator
    Clone
    (System.Xml.XPath.XPathNodeIterator))
  (define-field-port
    current
    #f
    #f
    (property:)
    System.Xml.XPath.SelfIterator
    Current
    System.Xml.XPath.XPathNavigator))
