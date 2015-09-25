(library (system xml xpath node-set)
  (export is? node-set? return-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.XPath.NodeSet a))
  (define (node-set? a) (clr-is System.Xml.XPath.NodeSet a))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.NodeSet
    ReturnType
    System.Xml.XPath.XPathResultType))
