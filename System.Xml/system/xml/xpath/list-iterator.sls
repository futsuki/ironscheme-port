(library (system xml xpath list-iterator)
  (export new is? list-iterator? move-next-core? clone current count)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.ListIterator a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.ListIterator a))
  (define (list-iterator? a) (clr-is System.Xml.XPath.ListIterator a))
  (define-method-port
    move-next-core?
    System.Xml.XPath.ListIterator
    MoveNextCore
    (System.Boolean))
  (define-method-port
    clone
    System.Xml.XPath.ListIterator
    Clone
    (System.Xml.XPath.XPathNodeIterator))
  (define-field-port
    current
    #f
    #f
    (property:)
    System.Xml.XPath.ListIterator
    Current
    System.Xml.XPath.XPathNavigator)
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Xml.XPath.ListIterator
    Count
    System.Int32))
