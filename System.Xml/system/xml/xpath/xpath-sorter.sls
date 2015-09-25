(library (system xml xpath xpath-sorter)
  (export new is? xpath-sorter? evaluate compare)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.XPathSorter a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.XPathSorter a))
  (define (xpath-sorter? a) (clr-is System.Xml.XPath.XPathSorter a))
  (define-method-port
    evaluate
    System.Xml.XPath.XPathSorter
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    compare
    System.Xml.XPath.XPathSorter
    Compare
    (System.Int32 System.Object System.Object)))
