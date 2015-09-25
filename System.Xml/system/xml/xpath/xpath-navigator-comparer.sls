(library (system xml xpath xpath-navigator-comparer)
  (export is?
          xpath-navigator-comparer?
          compare
          instance-get
          instance-set!
          instance-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.XPath.XPathNavigatorComparer a))
  (define (xpath-navigator-comparer? a)
    (clr-is System.Xml.XPath.XPathNavigatorComparer a))
  (define-method-port
    compare
    System.Xml.XPath.XPathNavigatorComparer
    Compare
    (System.Int32 System.Object System.Object))
  (define-field-port
    instance-get
    instance-set!
    instance-update!
    (static:)
    System.Xml.XPath.XPathNavigatorComparer
    Instance
    System.Xml.XPath.XPathNavigatorComparer))
