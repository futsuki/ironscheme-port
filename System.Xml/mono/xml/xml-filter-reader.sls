(library (mono xml xml-filter-reader)
  (export new
          is?
          xml-filter-reader?
          read?
          move-to-next-attribute?
          lookup-namespace
          move-to-first-attribute?
          read-string
          get-attribute
          has-line-info?
          resolve-entity
          read-attribute-value?
          move-to-attribute
          move-to-element?
          close
          can-read-binary-content?
          can-read-value-chunk?
          reader
          line-number
          line-position
          node-type
          name
          local-name
          namespace-uri
          prefix
          has-value?
          depth
          value
          base-uri
          is-empty-element?
          is-default?
          quote-char
          xml-lang
          xml-space
          attribute-count
          item
          item
          item
          eof?
          read-state
          name-table
          schema-info
          settings)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.XmlFilterReader a ...)))))
  (define (is? a) (clr-is Mono.Xml.XmlFilterReader a))
  (define (xml-filter-reader? a) (clr-is Mono.Xml.XmlFilterReader a))
  (define-method-port
    read?
    Mono.Xml.XmlFilterReader
    Read
    (System.Boolean))
  (define-method-port
    move-to-next-attribute?
    Mono.Xml.XmlFilterReader
    MoveToNextAttribute
    (System.Boolean))
  (define-method-port
    lookup-namespace
    Mono.Xml.XmlFilterReader
    LookupNamespace
    (System.String System.String))
  (define-method-port
    move-to-first-attribute?
    Mono.Xml.XmlFilterReader
    MoveToFirstAttribute
    (System.Boolean))
  (define-method-port
    read-string
    Mono.Xml.XmlFilterReader
    ReadString
    (System.String))
  (define-method-port
    get-attribute
    Mono.Xml.XmlFilterReader
    GetAttribute
    (System.String System.Int32)
    (System.String System.String System.String)
    (System.String System.String))
  (define-method-port
    has-line-info?
    Mono.Xml.XmlFilterReader
    HasLineInfo
    (System.Boolean))
  (define-method-port
    resolve-entity
    Mono.Xml.XmlFilterReader
    ResolveEntity
    (System.Void))
  (define-method-port
    read-attribute-value?
    Mono.Xml.XmlFilterReader
    ReadAttributeValue
    (System.Boolean))
  (define-method-port
    move-to-attribute
    Mono.Xml.XmlFilterReader
    MoveToAttribute
    (System.Void System.Int32)
    (System.Boolean System.String System.String)
    (System.Boolean System.String))
  (define-method-port
    move-to-element?
    Mono.Xml.XmlFilterReader
    MoveToElement
    (System.Boolean))
  (define-method-port
    close
    Mono.Xml.XmlFilterReader
    Close
    (System.Void))
  (define-field-port
    can-read-binary-content?
    #f
    #f
    (property:)
    Mono.Xml.XmlFilterReader
    CanReadBinaryContent
    System.Boolean)
  (define-field-port
    can-read-value-chunk?
    #f
    #f
    (property:)
    Mono.Xml.XmlFilterReader
    CanReadValueChunk
    System.Boolean)
  (define-field-port
    reader
    #f
    #f
    (property:)
    Mono.Xml.XmlFilterReader
    Reader
    System.Xml.XmlReader)
  (define-field-port
    line-number
    #f
    #f
    (property:)
    Mono.Xml.XmlFilterReader
    LineNumber
    System.Int32)
  (define-field-port
    line-position
    #f
    #f
    (property:)
    Mono.Xml.XmlFilterReader
    LinePosition
    System.Int32)
  (define-field-port
    node-type
    #f
    #f
    (property:)
    Mono.Xml.XmlFilterReader
    NodeType
    System.Xml.XmlNodeType)
  (define-field-port
    name
    #f
    #f
    (property:)
    Mono.Xml.XmlFilterReader
    Name
    System.String)
  (define-field-port
    local-name
    #f
    #f
    (property:)
    Mono.Xml.XmlFilterReader
    LocalName
    System.String)
  (define-field-port
    namespace-uri
    #f
    #f
    (property:)
    Mono.Xml.XmlFilterReader
    NamespaceURI
    System.String)
  (define-field-port
    prefix
    #f
    #f
    (property:)
    Mono.Xml.XmlFilterReader
    Prefix
    System.String)
  (define-field-port
    has-value?
    #f
    #f
    (property:)
    Mono.Xml.XmlFilterReader
    HasValue
    System.Boolean)
  (define-field-port
    depth
    #f
    #f
    (property:)
    Mono.Xml.XmlFilterReader
    Depth
    System.Int32)
  (define-field-port
    value
    #f
    #f
    (property:)
    Mono.Xml.XmlFilterReader
    Value
    System.String)
  (define-field-port
    base-uri
    #f
    #f
    (property:)
    Mono.Xml.XmlFilterReader
    BaseURI
    System.String)
  (define-field-port
    is-empty-element?
    #f
    #f
    (property:)
    Mono.Xml.XmlFilterReader
    IsEmptyElement
    System.Boolean)
  (define-field-port
    is-default?
    #f
    #f
    (property:)
    Mono.Xml.XmlFilterReader
    IsDefault
    System.Boolean)
  (define-field-port
    quote-char
    #f
    #f
    (property:)
    Mono.Xml.XmlFilterReader
    QuoteChar
    System.Char)
  (define-field-port
    xml-lang
    #f
    #f
    (property:)
    Mono.Xml.XmlFilterReader
    XmlLang
    System.String)
  (define-field-port
    xml-space
    #f
    #f
    (property:)
    Mono.Xml.XmlFilterReader
    XmlSpace
    System.Xml.XmlSpace)
  (define-field-port
    attribute-count
    #f
    #f
    (property:)
    Mono.Xml.XmlFilterReader
    AttributeCount
    System.Int32)
  (define-field-port
    item
    #f
    #f
    (property:)
    Mono.Xml.XmlFilterReader
    Item
    System.String)
  (define-field-port
    item
    #f
    #f
    (property:)
    Mono.Xml.XmlFilterReader
    Item
    System.String)
  (define-field-port
    item
    #f
    #f
    (property:)
    Mono.Xml.XmlFilterReader
    Item
    System.String)
  (define-field-port
    eof?
    #f
    #f
    (property:)
    Mono.Xml.XmlFilterReader
    EOF
    System.Boolean)
  (define-field-port
    read-state
    #f
    #f
    (property:)
    Mono.Xml.XmlFilterReader
    ReadState
    System.Xml.ReadState)
  (define-field-port
    name-table
    #f
    #f
    (property:)
    Mono.Xml.XmlFilterReader
    NameTable
    System.Xml.XmlNameTable)
  (define-field-port
    schema-info
    #f
    #f
    (property:)
    Mono.Xml.XmlFilterReader
    SchemaInfo
    System.Xml.Schema.IXmlSchemaInfo)
  (define-field-port
    settings
    #f
    #f
    (property:)
    Mono.Xml.XmlFilterReader
    Settings
    System.Xml.XmlReaderSettings))
