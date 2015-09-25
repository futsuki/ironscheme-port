(library (system xml xml-node-list)
  (export is? xml-node-list? item get-enumerator count item-of)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.XmlNodeList a))
  (define (xml-node-list? a) (clr-is System.Xml.XmlNodeList a))
  (define-method-port
    item
    System.Xml.XmlNodeList
    Item
    (System.Xml.XmlNode System.Int32))
  (define-method-port
    get-enumerator
    System.Xml.XmlNodeList
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Xml.XmlNodeList
    Count
    System.Int32)
  (define-field-port
    item-of
    #f
    #f
    (property:)
    System.Xml.XmlNodeList
    ItemOf
    System.Xml.XmlNode))
