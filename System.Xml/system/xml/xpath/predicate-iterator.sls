(library (system xml xpath predicate-iterator)
  (export new
          is?
          predicate-iterator?
          move-next-core?
          clone
          to-string
          current
          reverse-axis?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.PredicateIterator a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.PredicateIterator a))
  (define (predicate-iterator? a)
    (clr-is System.Xml.XPath.PredicateIterator a))
  (define-method-port
    move-next-core?
    System.Xml.XPath.PredicateIterator
    MoveNextCore
    (System.Boolean))
  (define-method-port
    clone
    System.Xml.XPath.PredicateIterator
    Clone
    (System.Xml.XPath.XPathNodeIterator))
  (define-method-port
    to-string
    System.Xml.XPath.PredicateIterator
    ToString
    (System.String))
  (define-field-port
    current
    #f
    #f
    (property:)
    System.Xml.XPath.PredicateIterator
    Current
    System.Xml.XPath.XPathNavigator)
  (define-field-port
    reverse-axis?
    #f
    #f
    (property:)
    System.Xml.XPath.PredicateIterator
    ReverseAxis
    System.Boolean))
