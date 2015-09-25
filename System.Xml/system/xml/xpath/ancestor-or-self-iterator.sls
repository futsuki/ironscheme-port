(library (system xml xpath ancestor-or-self-iterator)
  (export new
          is?
          ancestor-or-self-iterator?
          move-next-core?
          clone
          reverse-axis?
          count)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.AncestorOrSelfIterator a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.AncestorOrSelfIterator a))
  (define (ancestor-or-self-iterator? a)
    (clr-is System.Xml.XPath.AncestorOrSelfIterator a))
  (define-method-port
    move-next-core?
    System.Xml.XPath.AncestorOrSelfIterator
    MoveNextCore
    (System.Boolean))
  (define-method-port
    clone
    System.Xml.XPath.AncestorOrSelfIterator
    Clone
    (System.Xml.XPath.XPathNodeIterator))
  (define-field-port
    reverse-axis?
    #f
    #f
    (property:)
    System.Xml.XPath.AncestorOrSelfIterator
    ReverseAxis
    System.Boolean)
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Xml.XPath.AncestorOrSelfIterator
    Count
    System.Int32))
