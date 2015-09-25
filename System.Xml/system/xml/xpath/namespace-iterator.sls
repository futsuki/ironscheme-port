(library (system xml xpath namespace-iterator)
  (export new is? namespace-iterator? move-next-core? clone)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.NamespaceIterator a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.NamespaceIterator a))
  (define (namespace-iterator? a)
    (clr-is System.Xml.XPath.NamespaceIterator a))
  (define-method-port
    move-next-core?
    System.Xml.XPath.NamespaceIterator
    MoveNextCore
    (System.Boolean))
  (define-method-port
    clone
    System.Xml.XPath.NamespaceIterator
    Clone
    (System.Xml.XPath.XPathNodeIterator)))
