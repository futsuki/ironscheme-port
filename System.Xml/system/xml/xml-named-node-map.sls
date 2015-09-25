(library (system xml xml-named-node-map)
  (export is?
          xml-named-node-map?
          remove-named-item
          set-named-item
          get-named-item
          item
          get-enumerator
          count)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.XmlNamedNodeMap a))
  (define (xml-named-node-map? a) (clr-is System.Xml.XmlNamedNodeMap a))
  (define-method-port
    remove-named-item
    System.Xml.XmlNamedNodeMap
    RemoveNamedItem
    (System.Xml.XmlNode System.String System.String)
    (System.Xml.XmlNode System.String))
  (define-method-port
    set-named-item
    System.Xml.XmlNamedNodeMap
    SetNamedItem
    (System.Xml.XmlNode System.Xml.XmlNode))
  (define-method-port
    get-named-item
    System.Xml.XmlNamedNodeMap
    GetNamedItem
    (System.Xml.XmlNode System.String System.String)
    (System.Xml.XmlNode System.String))
  (define-method-port
    item
    System.Xml.XmlNamedNodeMap
    Item
    (System.Xml.XmlNode System.Int32))
  (define-method-port
    get-enumerator
    System.Xml.XmlNamedNodeMap
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Xml.XmlNamedNodeMap
    Count
    System.Int32))
