(library (system xml xpath following-iterator)
  (export new is? following-iterator? move-next-core? clone)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.FollowingIterator a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.FollowingIterator a))
  (define (following-iterator? a)
    (clr-is System.Xml.XPath.FollowingIterator a))
  (define-method-port
    move-next-core?
    System.Xml.XPath.FollowingIterator
    MoveNextCore
    (System.Boolean))
  (define-method-port
    clone
    System.Xml.XPath.FollowingIterator
    Clone
    (System.Xml.XPath.XPathNodeIterator)))
