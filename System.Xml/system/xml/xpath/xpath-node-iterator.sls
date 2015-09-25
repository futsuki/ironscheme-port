(library (system xml xpath xpath-node-iterator)
  (export is?
          xpath-node-iterator?
          get-enumerator
          clone
          move-next?
          count
          current
          current-position)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.XPath.XPathNodeIterator a))
  (define (xpath-node-iterator? a)
    (clr-is System.Xml.XPath.XPathNodeIterator a))
  (define-method-port
    get-enumerator
    System.Xml.XPath.XPathNodeIterator
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    clone
    System.Xml.XPath.XPathNodeIterator
    Clone
    (System.Xml.XPath.XPathNodeIterator))
  (define-method-port
    move-next?
    System.Xml.XPath.XPathNodeIterator
    MoveNext
    (System.Boolean))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Xml.XPath.XPathNodeIterator
    Count
    System.Int32)
  (define-field-port
    current
    #f
    #f
    (property:)
    System.Xml.XPath.XPathNodeIterator
    Current
    System.Xml.XPath.XPathNavigator)
  (define-field-port
    current-position
    #f
    #f
    (property:)
    System.Xml.XPath.XPathNodeIterator
    CurrentPosition
    System.Int32))
