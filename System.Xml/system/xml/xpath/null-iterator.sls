(library (system xml xpath null-iterator)
  (export new
          is?
          null-iterator?
          move-next-core?
          clone
          current-position
          current)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.NullIterator a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.NullIterator a))
  (define (null-iterator? a) (clr-is System.Xml.XPath.NullIterator a))
  (define-method-port
    move-next-core?
    System.Xml.XPath.NullIterator
    MoveNextCore
    (System.Boolean))
  (define-method-port
    clone
    System.Xml.XPath.NullIterator
    Clone
    (System.Xml.XPath.XPathNodeIterator))
  (define-field-port
    current-position
    #f
    #f
    (property:)
    System.Xml.XPath.NullIterator
    CurrentPosition
    System.Int32)
  (define-field-port
    current
    #f
    #f
    (property:)
    System.Xml.XPath.NullIterator
    Current
    System.Xml.XPath.XPathNavigator))
