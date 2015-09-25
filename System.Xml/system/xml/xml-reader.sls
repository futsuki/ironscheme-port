(library (system xml xml-reader)
  (export is?
          xml-reader?
          is-start-element?
          read?
          read-start-element
          move-to-next-attribute?
          read-element-content-as-int
          move-to-content
          read-element-content-as-double
          read-to-following?
          read-element-content-as-long
          lookup-namespace
          read-element-content-as-bin-hex
          read-element-content-as-boolean?
          read-content-as-bin-hex
          create
          skip
          read-content-as-date-time
          read-content-as-int
          read-subtree
          read-to-descendant?
          read-content-as-float
          is-name-token?
          read-element-content-as
          read-value-chunk
          move-to-first-attribute?
          read-string
          read-outer-xml
          read-element-content-as-string
          get-attribute
          read-inner-xml
          read-content-as-string
          read-content-as-decimal
          read-content-as
          is-name?
          read-content-as-boolean?
          resolve-entity
          read-element-content-as-base64
          read-attribute-value?
          read-content-as-base64
          read-to-next-sibling?
          read-element-string
          move-to-attribute
          read-content-as-object
          read-element-content-as-date-time
          read-content-as-double
          read-element-content-as-float
          read-end-element
          read-element-content-as-object
          read-content-as-long
          read-element-content-as-decimal
          move-to-element?
          close
          attribute-count
          base-uri
          can-read-binary-content?
          can-read-value-chunk?
          can-resolve-entity?
          depth
          eof?
          has-attributes?
          has-value?
          is-empty-element?
          is-default?
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
          schema-info
          settings
          value
          xml-lang
          xml-space
          value-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.XmlReader a))
  (define (xml-reader? a) (clr-is System.Xml.XmlReader a))
  (define-method-port
    is-start-element?
    System.Xml.XmlReader
    IsStartElement
    (System.Boolean System.String System.String)
    (System.Boolean System.String)
    (System.Boolean))
  (define-method-port read? System.Xml.XmlReader Read (System.Boolean))
  (define-method-port
    read-start-element
    System.Xml.XmlReader
    ReadStartElement
    (System.Void System.String System.String)
    (System.Void System.String)
    (System.Void))
  (define-method-port
    move-to-next-attribute?
    System.Xml.XmlReader
    MoveToNextAttribute
    (System.Boolean))
  (define-method-port
    read-element-content-as-int
    System.Xml.XmlReader
    ReadElementContentAsInt
    (System.Int32 System.String System.String)
    (System.Int32))
  (define-method-port
    move-to-content
    System.Xml.XmlReader
    MoveToContent
    (System.Xml.XmlNodeType))
  (define-method-port
    read-element-content-as-double
    System.Xml.XmlReader
    ReadElementContentAsDouble
    (System.Double System.String System.String)
    (System.Double))
  (define-method-port
    read-to-following?
    System.Xml.XmlReader
    ReadToFollowing
    (System.Boolean System.String System.String)
    (System.Boolean System.String))
  (define-method-port
    read-element-content-as-long
    System.Xml.XmlReader
    ReadElementContentAsLong
    (System.Int64 System.String System.String)
    (System.Int64))
  (define-method-port
    lookup-namespace
    System.Xml.XmlReader
    LookupNamespace
    (System.String System.String))
  (define-method-port
    read-element-content-as-bin-hex
    System.Xml.XmlReader
    ReadElementContentAsBinHex
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    read-element-content-as-boolean?
    System.Xml.XmlReader
    ReadElementContentAsBoolean
    (System.Boolean System.String System.String)
    (System.Boolean))
  (define-method-port
    read-content-as-bin-hex
    System.Xml.XmlReader
    ReadContentAsBinHex
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    create
    System.Xml.XmlReader
    Create
    (static:
      System.Xml.XmlReader
      System.IO.TextReader
      System.Xml.XmlReaderSettings
      System.Xml.XmlParserContext)
    (static:
      System.Xml.XmlReader
      System.IO.Stream
      System.Xml.XmlReaderSettings
      System.Xml.XmlParserContext)
    (static:
      System.Xml.XmlReader
      System.String
      System.Xml.XmlReaderSettings
      System.Xml.XmlParserContext)
    (static:
      System.Xml.XmlReader
      System.Xml.XmlReader
      System.Xml.XmlReaderSettings)
    (static:
      System.Xml.XmlReader
      System.IO.TextReader
      System.Xml.XmlReaderSettings
      System.String)
    (static:
      System.Xml.XmlReader
      System.IO.Stream
      System.Xml.XmlReaderSettings
      System.String)
    (static:
      System.Xml.XmlReader
      System.IO.TextReader
      System.Xml.XmlReaderSettings)
    (static:
      System.Xml.XmlReader
      System.IO.Stream
      System.Xml.XmlReaderSettings)
    (static:
      System.Xml.XmlReader
      System.String
      System.Xml.XmlReaderSettings)
    (static: System.Xml.XmlReader System.IO.TextReader)
    (static: System.Xml.XmlReader System.String)
    (static: System.Xml.XmlReader System.IO.Stream))
  (define-method-port skip System.Xml.XmlReader Skip (System.Void))
  (define-method-port
    read-content-as-date-time
    System.Xml.XmlReader
    ReadContentAsDateTime
    (System.DateTime))
  (define-method-port
    read-content-as-int
    System.Xml.XmlReader
    ReadContentAsInt
    (System.Int32))
  (define-method-port
    read-subtree
    System.Xml.XmlReader
    ReadSubtree
    (System.Xml.XmlReader))
  (define-method-port
    read-to-descendant?
    System.Xml.XmlReader
    ReadToDescendant
    (System.Boolean System.String System.String)
    (System.Boolean System.String))
  (define-method-port
    read-content-as-float
    System.Xml.XmlReader
    ReadContentAsFloat
    (System.Single))
  (define-method-port
    is-name-token?
    System.Xml.XmlReader
    IsNameToken
    (static: System.Boolean System.String))
  (define-method-port
    read-element-content-as
    System.Xml.XmlReader
    ReadElementContentAs
    (System.Object
      System.Type
      System.Xml.IXmlNamespaceResolver
      System.String
      System.String)
    (System.Object System.Type System.Xml.IXmlNamespaceResolver))
  (define-method-port
    read-value-chunk
    System.Xml.XmlReader
    ReadValueChunk
    (System.Int32 System.Char[] System.Int32 System.Int32))
  (define-method-port
    move-to-first-attribute?
    System.Xml.XmlReader
    MoveToFirstAttribute
    (System.Boolean))
  (define-method-port
    read-string
    System.Xml.XmlReader
    ReadString
    (System.String))
  (define-method-port
    read-outer-xml
    System.Xml.XmlReader
    ReadOuterXml
    (System.String))
  (define-method-port
    read-element-content-as-string
    System.Xml.XmlReader
    ReadElementContentAsString
    (System.String System.String System.String)
    (System.String))
  (define-method-port
    get-attribute
    System.Xml.XmlReader
    GetAttribute
    (System.String System.String System.String)
    (System.String System.String)
    (System.String System.Int32))
  (define-method-port
    read-inner-xml
    System.Xml.XmlReader
    ReadInnerXml
    (System.String))
  (define-method-port
    read-content-as-string
    System.Xml.XmlReader
    ReadContentAsString
    (System.String))
  (define-method-port
    read-content-as-decimal
    System.Xml.XmlReader
    ReadContentAsDecimal
    (System.Decimal))
  (define-method-port
    read-content-as
    System.Xml.XmlReader
    ReadContentAs
    (System.Object System.Type System.Xml.IXmlNamespaceResolver))
  (define-method-port
    is-name?
    System.Xml.XmlReader
    IsName
    (static: System.Boolean System.String))
  (define-method-port
    read-content-as-boolean?
    System.Xml.XmlReader
    ReadContentAsBoolean
    (System.Boolean))
  (define-method-port
    resolve-entity
    System.Xml.XmlReader
    ResolveEntity
    (System.Void))
  (define-method-port
    read-element-content-as-base64
    System.Xml.XmlReader
    ReadElementContentAsBase64
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    read-attribute-value?
    System.Xml.XmlReader
    ReadAttributeValue
    (System.Boolean))
  (define-method-port
    read-content-as-base64
    System.Xml.XmlReader
    ReadContentAsBase64
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    read-to-next-sibling?
    System.Xml.XmlReader
    ReadToNextSibling
    (System.Boolean System.String System.String)
    (System.Boolean System.String))
  (define-method-port
    read-element-string
    System.Xml.XmlReader
    ReadElementString
    (System.String System.String System.String)
    (System.String System.String)
    (System.String))
  (define-method-port
    move-to-attribute
    System.Xml.XmlReader
    MoveToAttribute
    (System.Boolean System.String System.String)
    (System.Boolean System.String)
    (System.Void System.Int32))
  (define-method-port
    read-content-as-object
    System.Xml.XmlReader
    ReadContentAsObject
    (System.Object))
  (define-method-port
    read-element-content-as-date-time
    System.Xml.XmlReader
    ReadElementContentAsDateTime
    (System.DateTime System.String System.String)
    (System.DateTime))
  (define-method-port
    read-content-as-double
    System.Xml.XmlReader
    ReadContentAsDouble
    (System.Double))
  (define-method-port
    read-element-content-as-float
    System.Xml.XmlReader
    ReadElementContentAsFloat
    (System.Single System.String System.String)
    (System.Single))
  (define-method-port
    read-end-element
    System.Xml.XmlReader
    ReadEndElement
    (System.Void))
  (define-method-port
    read-element-content-as-object
    System.Xml.XmlReader
    ReadElementContentAsObject
    (System.Object System.String System.String)
    (System.Object))
  (define-method-port
    read-content-as-long
    System.Xml.XmlReader
    ReadContentAsLong
    (System.Int64))
  (define-method-port
    read-element-content-as-decimal
    System.Xml.XmlReader
    ReadElementContentAsDecimal
    (System.Decimal System.String System.String)
    (System.Decimal))
  (define-method-port
    move-to-element?
    System.Xml.XmlReader
    MoveToElement
    (System.Boolean))
  (define-method-port close System.Xml.XmlReader Close (System.Void))
  (define-field-port
    attribute-count
    #f
    #f
    (property:)
    System.Xml.XmlReader
    AttributeCount
    System.Int32)
  (define-field-port
    base-uri
    #f
    #f
    (property:)
    System.Xml.XmlReader
    BaseURI
    System.String)
  (define-field-port
    can-read-binary-content?
    #f
    #f
    (property:)
    System.Xml.XmlReader
    CanReadBinaryContent
    System.Boolean)
  (define-field-port
    can-read-value-chunk?
    #f
    #f
    (property:)
    System.Xml.XmlReader
    CanReadValueChunk
    System.Boolean)
  (define-field-port
    can-resolve-entity?
    #f
    #f
    (property:)
    System.Xml.XmlReader
    CanResolveEntity
    System.Boolean)
  (define-field-port
    depth
    #f
    #f
    (property:)
    System.Xml.XmlReader
    Depth
    System.Int32)
  (define-field-port
    eof?
    #f
    #f
    (property:)
    System.Xml.XmlReader
    EOF
    System.Boolean)
  (define-field-port
    has-attributes?
    #f
    #f
    (property:)
    System.Xml.XmlReader
    HasAttributes
    System.Boolean)
  (define-field-port
    has-value?
    #f
    #f
    (property:)
    System.Xml.XmlReader
    HasValue
    System.Boolean)
  (define-field-port
    is-empty-element?
    #f
    #f
    (property:)
    System.Xml.XmlReader
    IsEmptyElement
    System.Boolean)
  (define-field-port
    is-default?
    #f
    #f
    (property:)
    System.Xml.XmlReader
    IsDefault
    System.Boolean)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Xml.XmlReader
    Item
    System.String)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Xml.XmlReader
    Item
    System.String)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Xml.XmlReader
    Item
    System.String)
  (define-field-port
    local-name
    #f
    #f
    (property:)
    System.Xml.XmlReader
    LocalName
    System.String)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Xml.XmlReader
    Name
    System.String)
  (define-field-port
    namespace-uri
    #f
    #f
    (property:)
    System.Xml.XmlReader
    NamespaceURI
    System.String)
  (define-field-port
    name-table
    #f
    #f
    (property:)
    System.Xml.XmlReader
    NameTable
    System.Xml.XmlNameTable)
  (define-field-port
    node-type
    #f
    #f
    (property:)
    System.Xml.XmlReader
    NodeType
    System.Xml.XmlNodeType)
  (define-field-port
    prefix
    #f
    #f
    (property:)
    System.Xml.XmlReader
    Prefix
    System.String)
  (define-field-port
    quote-char
    #f
    #f
    (property:)
    System.Xml.XmlReader
    QuoteChar
    System.Char)
  (define-field-port
    read-state
    #f
    #f
    (property:)
    System.Xml.XmlReader
    ReadState
    System.Xml.ReadState)
  (define-field-port
    schema-info
    #f
    #f
    (property:)
    System.Xml.XmlReader
    SchemaInfo
    System.Xml.Schema.IXmlSchemaInfo)
  (define-field-port
    settings
    #f
    #f
    (property:)
    System.Xml.XmlReader
    Settings
    System.Xml.XmlReaderSettings)
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Xml.XmlReader
    Value
    System.String)
  (define-field-port
    xml-lang
    #f
    #f
    (property:)
    System.Xml.XmlReader
    XmlLang
    System.String)
  (define-field-port
    xml-space
    #f
    #f
    (property:)
    System.Xml.XmlReader
    XmlSpace
    System.Xml.XmlSpace)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    System.Xml.XmlReader
    ValueType
    System.Type))
