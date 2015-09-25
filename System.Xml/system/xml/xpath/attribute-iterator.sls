(library (system xml xpath attribute-iterator)
  (export new is? attribute-iterator? move-next-core? clone)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.AttributeIterator a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.AttributeIterator a))
  (define (attribute-iterator? a)
    (clr-is System.Xml.XPath.AttributeIterator a))
  (define-method-port
    move-next-core?
    System.Xml.XPath.AttributeIterator
    MoveNextCore
    (System.Boolean))
  (define-method-port
    clone
    System.Xml.XPath.AttributeIterator
    Clone
    (System.Xml.XPath.XPathNodeIterator)))
