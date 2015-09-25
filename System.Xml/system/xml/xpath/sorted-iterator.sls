(library (system xml xpath sorted-iterator)
  (export new is? sorted-iterator? move-next-core? clone current count)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.SortedIterator a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.SortedIterator a))
  (define (sorted-iterator? a)
    (clr-is System.Xml.XPath.SortedIterator a))
  (define-method-port
    move-next-core?
    System.Xml.XPath.SortedIterator
    MoveNextCore
    (System.Boolean))
  (define-method-port
    clone
    System.Xml.XPath.SortedIterator
    Clone
    (System.Xml.XPath.XPathNodeIterator))
  (define-field-port
    current
    #f
    #f
    (property:)
    System.Xml.XPath.SortedIterator
    Current
    System.Xml.XPath.XPathNavigator)
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Xml.XPath.SortedIterator
    Count
    System.Int32))
