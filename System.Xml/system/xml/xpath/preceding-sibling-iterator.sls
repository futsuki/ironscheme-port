(library (system xml xpath preceding-sibling-iterator)
  (export new
          is?
          preceding-sibling-iterator?
          move-next-core?
          clone
          reverse-axis?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.PrecedingSiblingIterator a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.PrecedingSiblingIterator a))
  (define (preceding-sibling-iterator? a)
    (clr-is System.Xml.XPath.PrecedingSiblingIterator a))
  (define-method-port
    move-next-core?
    System.Xml.XPath.PrecedingSiblingIterator
    MoveNextCore
    (System.Boolean))
  (define-method-port
    clone
    System.Xml.XPath.PrecedingSiblingIterator
    Clone
    (System.Xml.XPath.XPathNodeIterator))
  (define-field-port
    reverse-axis?
    #f
    #f
    (property:)
    System.Xml.XPath.PrecedingSiblingIterator
    ReverseAxis
    System.Boolean))
