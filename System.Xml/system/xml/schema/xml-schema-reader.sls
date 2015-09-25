(library (system xml schema xml-schema-reader)
  (export new
          is?
          xml-schema-reader?
          is-start-element?
          skip-to-end
          read-start-element
          move-to-next-attribute?
          move-to-content
          read-next-element?
          lookup-namespace
          read-end-element
          to-string
          move-to-first-attribute?
          read-string
          read-outer-xml
          raise-invalid-element-error
          get-attribute
          read-inner-xml
          get-hash-code
          skip
          has-line-info?
          read-attribute-value?
          resolve-entity
          read?
          read-element-string
          move-to-attribute
          equals?
          move-to-element?
          close
          full-name
          reader
          line-number
          line-position
          attribute-count
          base-uri
          can-resolve-entity?
          depth
          eof?
          has-attributes?
          has-value?
          is-default?
          is-empty-element?
          item
          item
          item
          local-name
          name
          namespace-uri
          name-table
          node-type
          prefix
          quote-char
          read-state
          value
          xml-lang
          xml-space)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Schema.XmlSchemaReader a ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaReader a))
  (define (xml-schema-reader? a)
    (clr-is System.Xml.Schema.XmlSchemaReader a))
  (define-method-port
    is-start-element?
    System.Xml.Schema.XmlSchemaReader
    IsStartElement
    (System.Boolean System.String)
    (System.Boolean System.String System.String)
    (System.Boolean))
  (define-method-port
    skip-to-end
    System.Xml.Schema.XmlSchemaReader
    SkipToEnd
    (System.Void))
  (define-method-port
    read-start-element
    System.Xml.Schema.XmlSchemaReader
    ReadStartElement
    (System.Void System.String)
    (System.Void System.String System.String)
    (System.Void))
  (define-method-port
    move-to-next-attribute?
    System.Xml.Schema.XmlSchemaReader
    MoveToNextAttribute
    (System.Boolean))
  (define-method-port
    move-to-content
    System.Xml.Schema.XmlSchemaReader
    MoveToContent
    (System.Xml.XmlNodeType))
  (define-method-port
    read-next-element?
    System.Xml.Schema.XmlSchemaReader
    ReadNextElement
    (System.Boolean))
  (define-method-port
    lookup-namespace
    System.Xml.Schema.XmlSchemaReader
    LookupNamespace
    (System.String System.String))
  (define-method-port
    read-end-element
    System.Xml.Schema.XmlSchemaReader
    ReadEndElement
    (System.Void))
  (define-method-port
    to-string
    System.Xml.Schema.XmlSchemaReader
    ToString
    (System.String))
  (define-method-port
    move-to-first-attribute?
    System.Xml.Schema.XmlSchemaReader
    MoveToFirstAttribute
    (System.Boolean))
  (define-method-port
    read-string
    System.Xml.Schema.XmlSchemaReader
    ReadString
    (System.String))
  (define-method-port
    read-outer-xml
    System.Xml.Schema.XmlSchemaReader
    ReadOuterXml
    (System.String))
  (define-method-port
    raise-invalid-element-error
    System.Xml.Schema.XmlSchemaReader
    RaiseInvalidElementError
    (System.Void))
  (define-method-port
    get-attribute
    System.Xml.Schema.XmlSchemaReader
    GetAttribute
    (System.String System.String System.String)
    (System.String System.String)
    (System.String System.Int32))
  (define-method-port
    read-inner-xml
    System.Xml.Schema.XmlSchemaReader
    ReadInnerXml
    (System.String))
  (define-method-port
    get-hash-code
    System.Xml.Schema.XmlSchemaReader
    GetHashCode
    (System.Int32))
  (define-method-port
    skip
    System.Xml.Schema.XmlSchemaReader
    Skip
    (System.Void))
  (define-method-port
    has-line-info?
    System.Xml.Schema.XmlSchemaReader
    HasLineInfo
    (System.Boolean))
  (define-method-port
    read-attribute-value?
    System.Xml.Schema.XmlSchemaReader
    ReadAttributeValue
    (System.Boolean))
  (define-method-port
    resolve-entity
    System.Xml.Schema.XmlSchemaReader
    ResolveEntity
    (System.Void))
  (define-method-port
    read?
    System.Xml.Schema.XmlSchemaReader
    Read
    (System.Boolean))
  (define-method-port
    read-element-string
    System.Xml.Schema.XmlSchemaReader
    ReadElementString
    (System.String System.String)
    (System.String System.String System.String)
    (System.String))
  (define-method-port
    move-to-attribute
    System.Xml.Schema.XmlSchemaReader
    MoveToAttribute
    (System.Boolean System.String System.String)
    (System.Boolean System.String)
    (System.Void System.Int32))
  (define-method-port
    equals?
    System.Xml.Schema.XmlSchemaReader
    Equals
    (System.Boolean System.Object))
  (define-method-port
    move-to-element?
    System.Xml.Schema.XmlSchemaReader
    MoveToElement
    (System.Boolean))
  (define-method-port
    close
    System.Xml.Schema.XmlSchemaReader
    Close
    (System.Void))
  (define-field-port
    full-name
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaReader
    FullName
    System.String)
  (define-field-port
    reader
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaReader
    Reader
    System.Xml.XmlReader)
  (define-field-port
    line-number
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaReader
    LineNumber
    System.Int32)
  (define-field-port
    line-position
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaReader
    LinePosition
    System.Int32)
  (define-field-port
    attribute-count
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaReader
    AttributeCount
    System.Int32)
  (define-field-port
    base-uri
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaReader
    BaseURI
    System.String)
  (define-field-port
    can-resolve-entity?
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaReader
    CanResolveEntity
    System.Boolean)
  (define-field-port
    depth
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaReader
    Depth
    System.Int32)
  (define-field-port
    eof?
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaReader
    EOF
    System.Boolean)
  (define-field-port
    has-attributes?
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaReader
    HasAttributes
    System.Boolean)
  (define-field-port
    has-value?
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaReader
    HasValue
    System.Boolean)
  (define-field-port
    is-default?
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaReader
    IsDefault
    System.Boolean)
  (define-field-port
    is-empty-element?
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaReader
    IsEmptyElement
    System.Boolean)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaReader
    Item
    System.String)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaReader
    Item
    System.String)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaReader
    Item
    System.String)
  (define-field-port
    local-name
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaReader
    LocalName
    System.String)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaReader
    Name
    System.String)
  (define-field-port
    namespace-uri
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaReader
    NamespaceURI
    System.String)
  (define-field-port
    name-table
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaReader
    NameTable
    System.Xml.XmlNameTable)
  (define-field-port
    node-type
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaReader
    NodeType
    System.Xml.XmlNodeType)
  (define-field-port
    prefix
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaReader
    Prefix
    System.String)
  (define-field-port
    quote-char
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaReader
    QuoteChar
    System.Char)
  (define-field-port
    read-state
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaReader
    ReadState
    System.Xml.ReadState)
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaReader
    Value
    System.String)
  (define-field-port
    xml-lang
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaReader
    XmlLang
    System.String)
  (define-field-port
    xml-space
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaReader
    XmlSpace
    System.Xml.XmlSpace))
