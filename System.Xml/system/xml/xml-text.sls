(library (system xml xml-text)
  (export is?
          xml-text?
          clone-node
          write-content-to
          write-to
          split-text
          local-name
          name
          node-type
          value-get
          value-set!
          value-update!
          parent-node)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.XmlText a))
  (define (xml-text? a) (clr-is System.Xml.XmlText a))
  (define-method-port
    clone-node
    System.Xml.XmlText
    CloneNode
    (System.Xml.XmlNode System.Boolean))
  (define-method-port
    write-content-to
    System.Xml.XmlText
    WriteContentTo
    (System.Void System.Xml.XmlWriter))
  (define-method-port
    write-to
    System.Xml.XmlText
    WriteTo
    (System.Void System.Xml.XmlWriter))
  (define-method-port
    split-text
    System.Xml.XmlText
    SplitText
    (System.Xml.XmlText System.Int32))
  (define-field-port
    local-name
    #f
    #f
    (property:)
    System.Xml.XmlText
    LocalName
    System.String)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Xml.XmlText
    Name
    System.String)
  (define-field-port
    node-type
    #f
    #f
    (property:)
    System.Xml.XmlText
    NodeType
    System.Xml.XmlNodeType)
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.Xml.XmlText
    Value
    System.String)
  (define-field-port
    parent-node
    #f
    #f
    (property:)
    System.Xml.XmlText
    ParentNode
    System.Xml.XmlNode))
