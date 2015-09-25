(library (system xml xml-significant-whitespace)
  (export is?
          xml-significant-whitespace?
          clone-node
          write-content-to
          write-to
          local-name
          name
          node-type
          value-get
          value-set!
          value-update!
          parent-node)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.XmlSignificantWhitespace a))
  (define (xml-significant-whitespace? a)
    (clr-is System.Xml.XmlSignificantWhitespace a))
  (define-method-port
    clone-node
    System.Xml.XmlSignificantWhitespace
    CloneNode
    (System.Xml.XmlNode System.Boolean))
  (define-method-port
    write-content-to
    System.Xml.XmlSignificantWhitespace
    WriteContentTo
    (System.Void System.Xml.XmlWriter))
  (define-method-port
    write-to
    System.Xml.XmlSignificantWhitespace
    WriteTo
    (System.Void System.Xml.XmlWriter))
  (define-field-port
    local-name
    #f
    #f
    (property:)
    System.Xml.XmlSignificantWhitespace
    LocalName
    System.String)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Xml.XmlSignificantWhitespace
    Name
    System.String)
  (define-field-port
    node-type
    #f
    #f
    (property:)
    System.Xml.XmlSignificantWhitespace
    NodeType
    System.Xml.XmlNodeType)
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.Xml.XmlSignificantWhitespace
    Value
    System.String)
  (define-field-port
    parent-node
    #f
    #f
    (property:)
    System.Xml.XmlSignificantWhitespace
    ParentNode
    System.Xml.XmlNode))
