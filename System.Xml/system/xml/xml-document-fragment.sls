(library (system xml xml-document-fragment)
  (export is?
          xml-document-fragment?
          clone-node
          write-content-to
          write-to
          inner-xml-get
          inner-xml-set!
          inner-xml-update!
          local-name
          name
          node-type
          owner-document
          parent-node)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.XmlDocumentFragment a))
  (define (xml-document-fragment? a)
    (clr-is System.Xml.XmlDocumentFragment a))
  (define-method-port
    clone-node
    System.Xml.XmlDocumentFragment
    CloneNode
    (System.Xml.XmlNode System.Boolean))
  (define-method-port
    write-content-to
    System.Xml.XmlDocumentFragment
    WriteContentTo
    (System.Void System.Xml.XmlWriter))
  (define-method-port
    write-to
    System.Xml.XmlDocumentFragment
    WriteTo
    (System.Void System.Xml.XmlWriter))
  (define-field-port
    inner-xml-get
    inner-xml-set!
    inner-xml-update!
    (property:)
    System.Xml.XmlDocumentFragment
    InnerXml
    System.String)
  (define-field-port
    local-name
    #f
    #f
    (property:)
    System.Xml.XmlDocumentFragment
    LocalName
    System.String)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Xml.XmlDocumentFragment
    Name
    System.String)
  (define-field-port
    node-type
    #f
    #f
    (property:)
    System.Xml.XmlDocumentFragment
    NodeType
    System.Xml.XmlNodeType)
  (define-field-port
    owner-document
    #f
    #f
    (property:)
    System.Xml.XmlDocumentFragment
    OwnerDocument
    System.Xml.XmlDocument)
  (define-field-port
    parent-node
    #f
    #f
    (property:)
    System.Xml.XmlDocumentFragment
    ParentNode
    System.Xml.XmlNode))
