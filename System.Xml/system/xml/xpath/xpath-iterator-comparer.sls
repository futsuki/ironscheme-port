(library (system xml xpath xpath-iterator-comparer)
  (export is?
          xpath-iterator-comparer?
          compare
          instance-get
          instance-set!
          instance-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.XPath.XPathIteratorComparer a))
  (define (xpath-iterator-comparer? a)
    (clr-is System.Xml.XPath.XPathIteratorComparer a))
  (define-method-port
    compare
    System.Xml.XPath.XPathIteratorComparer
    Compare
    (System.Int32 System.Object System.Object))
  (define-field-port
    instance-get
    instance-set!
    instance-update!
    (static:)
    System.Xml.XPath.XPathIteratorComparer
    Instance
    System.Xml.XPath.XPathIteratorComparer))
