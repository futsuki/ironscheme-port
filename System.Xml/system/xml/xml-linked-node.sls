(library (system xml xml-linked-node)
  (export is? xml-linked-node? next-sibling previous-sibling)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.XmlLinkedNode a))
  (define (xml-linked-node? a) (clr-is System.Xml.XmlLinkedNode a))
  (define-field-port
    next-sibling
    #f
    #f
    (property:)
    System.Xml.XmlLinkedNode
    NextSibling
    System.Xml.XmlNode)
  (define-field-port
    previous-sibling
    #f
    #f
    (property:)
    System.Xml.XmlLinkedNode
    PreviousSibling
    System.Xml.XmlNode))
