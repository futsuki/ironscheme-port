(library (system xml xpath xpath-sorters)
  (export new is? xpath-sorters? sort add copy-from)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.XPathSorters a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.XPathSorters a))
  (define (xpath-sorters? a) (clr-is System.Xml.XPath.XPathSorters a))
  (define-method-port
    sort
    System.Xml.XPath.XPathSorters
    Sort
    (System.Xml.XPath.BaseIterator
      System.Collections.ArrayList
      System.Xml.IXmlNamespaceResolver)
    (System.Xml.XPath.BaseIterator System.Xml.XPath.BaseIterator))
  (define-method-port
    add
    System.Xml.XPath.XPathSorters
    Add
    (System.Void
      System.Object
      System.Xml.XPath.XmlSortOrder
      System.Xml.XPath.XmlCaseOrder
      System.String
      System.Xml.XPath.XmlDataType)
    (System.Void System.Object System.Collections.IComparer))
  (define-method-port
    copy-from
    System.Xml.XPath.XPathSorters
    CopyFrom
    (System.Void System.Xml.XPath.XPathSorter[])))
