(library (system xml xml-entity-reference)
  (export is?
          xml-entity-reference?
          clone-node
          write-content-to
          write-to
          base-uri
          is-read-only?
          local-name
          name
          node-type
          value-get
          value-set!
          value-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.XmlEntityReference a))
  (define (xml-entity-reference? a)
    (clr-is System.Xml.XmlEntityReference a))
  (define-method-port
    clone-node
    System.Xml.XmlEntityReference
    CloneNode
    (System.Xml.XmlNode System.Boolean))
  (define-method-port
    write-content-to
    System.Xml.XmlEntityReference
    WriteContentTo
    (System.Void System.Xml.XmlWriter))
  (define-method-port
    write-to
    System.Xml.XmlEntityReference
    WriteTo
    (System.Void System.Xml.XmlWriter))
  (define-field-port
    base-uri
    #f
    #f
    (property:)
    System.Xml.XmlEntityReference
    BaseURI
    System.String)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Xml.XmlEntityReference
    IsReadOnly
    System.Boolean)
  (define-field-port
    local-name
    #f
    #f
    (property:)
    System.Xml.XmlEntityReference
    LocalName
    System.String)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Xml.XmlEntityReference
    Name
    System.String)
  (define-field-port
    node-type
    #f
    #f
    (property:)
    System.Xml.XmlEntityReference
    NodeType
    System.Xml.XmlNodeType)
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.Xml.XmlEntityReference
    Value
    System.String))
