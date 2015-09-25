(library (system xml xpath parent-iterator)
  (export new is? parent-iterator? move-next-core? clone)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.ParentIterator a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.ParentIterator a))
  (define (parent-iterator? a)
    (clr-is System.Xml.XPath.ParentIterator a))
  (define-method-port
    move-next-core?
    System.Xml.XPath.ParentIterator
    MoveNextCore
    (System.Boolean))
  (define-method-port
    clone
    System.Xml.XPath.ParentIterator
    Clone
    (System.Xml.XPath.XPathNodeIterator)))
