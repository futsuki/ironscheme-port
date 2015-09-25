(library (system xml xpath preceding-iterator)
  (export new
          is?
          preceding-iterator?
          move-next-core?
          clone
          reverse-axis?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.PrecedingIterator a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.PrecedingIterator a))
  (define (preceding-iterator? a)
    (clr-is System.Xml.XPath.PrecedingIterator a))
  (define-method-port
    move-next-core?
    System.Xml.XPath.PrecedingIterator
    MoveNextCore
    (System.Boolean))
  (define-method-port
    clone
    System.Xml.XPath.PrecedingIterator
    Clone
    (System.Xml.XPath.XPathNodeIterator))
  (define-field-port
    reverse-axis?
    #f
    #f
    (property:)
    System.Xml.XPath.PrecedingIterator
    ReverseAxis
    System.Boolean))
