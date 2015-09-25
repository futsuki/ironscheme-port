(library (system xml xpath xpath-sort-element)
  (export new
          is?
          xpath-sort-element?
          navigator-get
          navigator-set!
          navigator-update!
          values-get
          values-set!
          values-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.XPathSortElement a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.XPathSortElement a))
  (define (xpath-sort-element? a)
    (clr-is System.Xml.XPath.XPathSortElement a))
  (define-field-port
    navigator-get
    navigator-set!
    navigator-update!
    ()
    System.Xml.XPath.XPathSortElement
    Navigator
    System.Xml.XPath.XPathNavigator)
  (define-field-port
    values-get
    values-set!
    values-update!
    ()
    System.Xml.XPath.XPathSortElement
    Values
    System.Object[]))
