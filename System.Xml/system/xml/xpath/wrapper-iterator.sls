(library (system xml xpath wrapper-iterator)
  (export new is? wrapper-iterator? move-next-core? clone current)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.WrapperIterator a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.WrapperIterator a))
  (define (wrapper-iterator? a)
    (clr-is System.Xml.XPath.WrapperIterator a))
  (define-method-port
    move-next-core?
    System.Xml.XPath.WrapperIterator
    MoveNextCore
    (System.Boolean))
  (define-method-port
    clone
    System.Xml.XPath.WrapperIterator
    Clone
    (System.Xml.XPath.XPathNodeIterator))
  (define-field-port
    current
    #f
    #f
    (property:)
    System.Xml.XPath.WrapperIterator
    Current
    System.Xml.XPath.XPathNavigator))
