(library (system xml xpath descendant-iterator)
  (export new is? descendant-iterator? move-next-core? clone)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.DescendantIterator a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.DescendantIterator a))
  (define (descendant-iterator? a)
    (clr-is System.Xml.XPath.DescendantIterator a))
  (define-method-port
    move-next-core?
    System.Xml.XPath.DescendantIterator
    MoveNextCore
    (System.Boolean))
  (define-method-port
    clone
    System.Xml.XPath.DescendantIterator
    Clone
    (System.Xml.XPath.XPathNodeIterator)))
