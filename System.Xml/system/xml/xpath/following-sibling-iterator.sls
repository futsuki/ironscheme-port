(library (system xml xpath following-sibling-iterator)
  (export new is? following-sibling-iterator? move-next-core? clone)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.FollowingSiblingIterator a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.FollowingSiblingIterator a))
  (define (following-sibling-iterator? a)
    (clr-is System.Xml.XPath.FollowingSiblingIterator a))
  (define-method-port
    move-next-core?
    System.Xml.XPath.FollowingSiblingIterator
    MoveNextCore
    (System.Boolean))
  (define-method-port
    clone
    System.Xml.XPath.FollowingSiblingIterator
    Clone
    (System.Xml.XPath.XPathNodeIterator)))
