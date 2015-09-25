(library (system xml xpath ancestor-iterator)
  (export new
          is?
          ancestor-iterator?
          move-next-core?
          clone
          reverse-axis?
          count)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.AncestorIterator a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.AncestorIterator a))
  (define (ancestor-iterator? a)
    (clr-is System.Xml.XPath.AncestorIterator a))
  (define-method-port
    move-next-core?
    System.Xml.XPath.AncestorIterator
    MoveNextCore
    (System.Boolean))
  (define-method-port
    clone
    System.Xml.XPath.AncestorIterator
    Clone
    (System.Xml.XPath.XPathNodeIterator))
  (define-field-port
    reverse-axis?
    #f
    #f
    (property:)
    System.Xml.XPath.AncestorIterator
    ReverseAxis
    System.Boolean)
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Xml.XPath.AncestorIterator
    Count
    System.Int32))
