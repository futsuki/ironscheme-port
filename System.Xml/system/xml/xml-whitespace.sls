(library (system xml xml-whitespace)
  (export is?
          xml-whitespace?
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
  (define (is? a) (clr-is System.Xml.XmlWhitespace a))
  (define (xml-whitespace? a) (clr-is System.Xml.XmlWhitespace a))
  (define-method-port
    clone-node
    System.Xml.XmlWhitespace
    CloneNode
    (System.Xml.XmlNode System.Boolean))
  (define-method-port
    write-content-to
    System.Xml.XmlWhitespace
    WriteContentTo
    (System.Void System.Xml.XmlWriter))
  (define-method-port
    write-to
    System.Xml.XmlWhitespace
    WriteTo
    (System.Void System.Xml.XmlWriter))
  (define-field-port
    local-name
    #f
    #f
    (property:)
    System.Xml.XmlWhitespace
    LocalName
    System.String)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Xml.XmlWhitespace
    Name
    System.String)
  (define-field-port
    node-type
    #f
    #f
    (property:)
    System.Xml.XmlWhitespace
    NodeType
    System.Xml.XmlNodeType)
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.Xml.XmlWhitespace
    Value
    System.String)
  (define-field-port
    parent-node
    #f
    #f
    (property:)
    System.Xml.XmlWhitespace
    ParentNode
    System.Xml.XmlNode))
