(library (system xml xml-element)
  (export is?
          xml-element?
          get-attribute-node
          clone-node
          remove-attribute
          set-attribute-node
          has-attribute?
          get-elements-by-tag-name
          write-content-to
          remove-all-attributes
          write-to
          remove-attribute-at
          get-attribute
          remove-attribute-node
          set-attribute
          remove-all
          attributes
          has-attributes?
          inner-text-get
          inner-text-set!
          inner-text-update!
          inner-xml-get
          inner-xml-set!
          inner-xml-update!
          is-empty?-get
          is-empty?-set!
          is-empty?-update!
          local-name
          name
          namespace-uri
          next-sibling
          node-type
          owner-document
          prefix-get
          prefix-set!
          prefix-update!
          parent-node
          schema-info)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.XmlElement a))
  (define (xml-element? a) (clr-is System.Xml.XmlElement a))
  (define-method-port
    get-attribute-node
    System.Xml.XmlElement
    GetAttributeNode
    (System.Xml.XmlAttribute System.String System.String)
    (System.Xml.XmlAttribute System.String))
  (define-method-port
    clone-node
    System.Xml.XmlElement
    CloneNode
    (System.Xml.XmlNode System.Boolean))
  (define-method-port
    remove-attribute
    System.Xml.XmlElement
    RemoveAttribute
    (System.Void System.String System.String)
    (System.Void System.String))
  (define-method-port
    set-attribute-node
    System.Xml.XmlElement
    SetAttributeNode
    (System.Xml.XmlAttribute System.String System.String)
    (System.Xml.XmlAttribute System.Xml.XmlAttribute))
  (define-method-port
    has-attribute?
    System.Xml.XmlElement
    HasAttribute
    (System.Boolean System.String System.String)
    (System.Boolean System.String))
  (define-method-port
    get-elements-by-tag-name
    System.Xml.XmlElement
    GetElementsByTagName
    (System.Xml.XmlNodeList System.String System.String)
    (System.Xml.XmlNodeList System.String))
  (define-method-port
    write-content-to
    System.Xml.XmlElement
    WriteContentTo
    (System.Void System.Xml.XmlWriter))
  (define-method-port
    remove-all-attributes
    System.Xml.XmlElement
    RemoveAllAttributes
    (System.Void))
  (define-method-port
    write-to
    System.Xml.XmlElement
    WriteTo
    (System.Void System.Xml.XmlWriter))
  (define-method-port
    remove-attribute-at
    System.Xml.XmlElement
    RemoveAttributeAt
    (System.Xml.XmlNode System.Int32))
  (define-method-port
    get-attribute
    System.Xml.XmlElement
    GetAttribute
    (System.String System.String System.String)
    (System.String System.String))
  (define-method-port
    remove-attribute-node
    System.Xml.XmlElement
    RemoveAttributeNode
    (System.Xml.XmlAttribute System.String System.String)
    (System.Xml.XmlAttribute System.Xml.XmlAttribute))
  (define-method-port
    set-attribute
    System.Xml.XmlElement
    SetAttribute
    (System.String System.String System.String System.String)
    (System.Void System.String System.String))
  (define-method-port
    remove-all
    System.Xml.XmlElement
    RemoveAll
    (System.Void))
  (define-field-port
    attributes
    #f
    #f
    (property:)
    System.Xml.XmlElement
    Attributes
    System.Xml.XmlAttributeCollection)
  (define-field-port
    has-attributes?
    #f
    #f
    (property:)
    System.Xml.XmlElement
    HasAttributes
    System.Boolean)
  (define-field-port
    inner-text-get
    inner-text-set!
    inner-text-update!
    (property:)
    System.Xml.XmlElement
    InnerText
    System.String)
  (define-field-port
    inner-xml-get
    inner-xml-set!
    inner-xml-update!
    (property:)
    System.Xml.XmlElement
    InnerXml
    System.String)
  (define-field-port
    is-empty?-get
    is-empty?-set!
    is-empty?-update!
    (property:)
    System.Xml.XmlElement
    IsEmpty
    System.Boolean)
  (define-field-port
    local-name
    #f
    #f
    (property:)
    System.Xml.XmlElement
    LocalName
    System.String)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Xml.XmlElement
    Name
    System.String)
  (define-field-port
    namespace-uri
    #f
    #f
    (property:)
    System.Xml.XmlElement
    NamespaceURI
    System.String)
  (define-field-port
    next-sibling
    #f
    #f
    (property:)
    System.Xml.XmlElement
    NextSibling
    System.Xml.XmlNode)
  (define-field-port
    node-type
    #f
    #f
    (property:)
    System.Xml.XmlElement
    NodeType
    System.Xml.XmlNodeType)
  (define-field-port
    owner-document
    #f
    #f
    (property:)
    System.Xml.XmlElement
    OwnerDocument
    System.Xml.XmlDocument)
  (define-field-port
    prefix-get
    prefix-set!
    prefix-update!
    (property:)
    System.Xml.XmlElement
    Prefix
    System.String)
  (define-field-port
    parent-node
    #f
    #f
    (property:)
    System.Xml.XmlElement
    ParentNode
    System.Xml.XmlNode)
  (define-field-port
    schema-info
    #f
    #f
    (property:)
    System.Xml.XmlElement
    SchemaInfo
    System.Xml.Schema.IXmlSchemaInfo))
