(library (system xml xpath simple-slash-iterator)
  (export new is? simple-slash-iterator? move-next-core? clone current)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.SimpleSlashIterator a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.SimpleSlashIterator a))
  (define (simple-slash-iterator? a)
    (clr-is System.Xml.XPath.SimpleSlashIterator a))
  (define-method-port
    move-next-core?
    System.Xml.XPath.SimpleSlashIterator
    MoveNextCore
    (System.Boolean))
  (define-method-port
    clone
    System.Xml.XPath.SimpleSlashIterator
    Clone
    (System.Xml.XPath.XPathNodeIterator))
  (define-field-port
    current
    #f
    #f
    (property:)
    System.Xml.XPath.SimpleSlashIterator
    Current
    System.Xml.XPath.XPathNavigator))
