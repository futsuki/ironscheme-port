(library (system xml xpath descendant-or-self-iterator)
  (export new is? descendant-or-self-iterator? move-next-core? clone)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.DescendantOrSelfIterator a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.DescendantOrSelfIterator a))
  (define (descendant-or-self-iterator? a)
    (clr-is System.Xml.XPath.DescendantOrSelfIterator a))
  (define-method-port
    move-next-core?
    System.Xml.XPath.DescendantOrSelfIterator
    MoveNextCore
    (System.Boolean))
  (define-method-port
    clone
    System.Xml.XPath.DescendantOrSelfIterator
    Clone
    (System.Xml.XPath.XPathNodeIterator)))
