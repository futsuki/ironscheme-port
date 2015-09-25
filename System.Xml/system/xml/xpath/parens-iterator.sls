(library (system xml xpath parens-iterator)
  (export new is? parens-iterator? move-next-core? clone current count)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.ParensIterator a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.ParensIterator a))
  (define (parens-iterator? a)
    (clr-is System.Xml.XPath.ParensIterator a))
  (define-method-port
    move-next-core?
    System.Xml.XPath.ParensIterator
    MoveNextCore
    (System.Boolean))
  (define-method-port
    clone
    System.Xml.XPath.ParensIterator
    Clone
    (System.Xml.XPath.XPathNodeIterator))
  (define-field-port
    current
    #f
    #f
    (property:)
    System.Xml.XPath.ParensIterator
    Current
    System.Xml.XPath.XPathNavigator)
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Xml.XPath.ParensIterator
    Count
    System.Int32))
