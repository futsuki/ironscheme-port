(library (mono xml schema xsd-validating-reader)
  (export new
          is?
          xsd-validating-reader?
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
          read-typed-value
          move-to-element?
          close
          validation-event-handler-get
          validation-event-handler-set!
          validation-event-handler-update!
          xsi-nil-depth
          namespaces?-get
          namespaces?-set!
          namespaces?-update!
          xml-resolver
          schemas-get
          schemas-set!
          schemas-update!
          schema-type
          validation-type-get
          validation-type-set!
          validation-type-update!
          attribute-count
          base-uri
          can-resolve-entity?
          depth
          eof?
          has-value?
          is-default?
          is-empty-element?
          item
          item
          item
          line-number
          line-position
          local-name
          name
          namespace-uri
          name-table
          node-type
          parser-context
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
         #'(clr-new Mono.Xml.Schema.XsdValidatingReader a ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdValidatingReader a))
  (define (xsd-validating-reader? a)
    (clr-is Mono.Xml.Schema.XsdValidatingReader a))
  (define-method-port
    read?
    Mono.Xml.Schema.XsdValidatingReader
    Read
    (System.Boolean))
  (define-method-port
    move-to-next-attribute?
    Mono.Xml.Schema.XsdValidatingReader
    MoveToNextAttribute
    (System.Boolean))
  (define-method-port
    lookup-namespace
    Mono.Xml.Schema.XsdValidatingReader
    LookupNamespace
    (System.String System.String))
  (define-method-port
    move-to-first-attribute?
    Mono.Xml.Schema.XsdValidatingReader
    MoveToFirstAttribute
    (System.Boolean))
  (define-method-port
    read-string
    Mono.Xml.Schema.XsdValidatingReader
    ReadString
    (System.String))
  (define-method-port
    get-attribute
    Mono.Xml.Schema.XsdValidatingReader
    GetAttribute
    (System.String System.String System.String)
    (System.String System.String)
    (System.String System.Int32))
  (define-method-port
    has-line-info?
    Mono.Xml.Schema.XsdValidatingReader
    HasLineInfo
    (System.Boolean))
  (define-method-port
    resolve-entity
    Mono.Xml.Schema.XsdValidatingReader
    ResolveEntity
    (System.Void))
  (define-method-port
    read-attribute-value?
    Mono.Xml.Schema.XsdValidatingReader
    ReadAttributeValue
    (System.Boolean))
  (define-method-port
    move-to-attribute
    Mono.Xml.Schema.XsdValidatingReader
    MoveToAttribute
    (System.Boolean System.String System.String)
    (System.Boolean System.String)
    (System.Void System.Int32))
  (define-method-port
    read-typed-value
    Mono.Xml.Schema.XsdValidatingReader
    ReadTypedValue
    (System.Object))
  (define-method-port
    move-to-element?
    Mono.Xml.Schema.XsdValidatingReader
    MoveToElement
    (System.Boolean))
  (define-method-port
    close
    Mono.Xml.Schema.XsdValidatingReader
    Close
    (System.Void))
  (define-field-port
    validation-event-handler-get
    validation-event-handler-set!
    validation-event-handler-update!
    ()
    Mono.Xml.Schema.XsdValidatingReader
    ValidationEventHandler
    System.Xml.Schema.ValidationEventHandler)
  (define-field-port
    xsi-nil-depth
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidatingReader
    XsiNilDepth
    System.Int32)
  (define-field-port
    namespaces?-get
    namespaces?-set!
    namespaces?-update!
    (property:)
    Mono.Xml.Schema.XsdValidatingReader
    Namespaces
    System.Boolean)
  (define-field-port
    #f
    xml-resolver
    #f
    (property:)
    Mono.Xml.Schema.XsdValidatingReader
    XmlResolver
    System.Xml.XmlResolver)
  (define-field-port
    schemas-get
    schemas-set!
    schemas-update!
    (property:)
    Mono.Xml.Schema.XsdValidatingReader
    Schemas
    System.Xml.Schema.XmlSchemaSet)
  (define-field-port
    schema-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidatingReader
    SchemaType
    System.Object)
  (define-field-port
    validation-type-get
    validation-type-set!
    validation-type-update!
    (property:)
    Mono.Xml.Schema.XsdValidatingReader
    ValidationType
    System.Xml.ValidationType)
  (define-field-port
    attribute-count
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidatingReader
    AttributeCount
    System.Int32)
  (define-field-port
    base-uri
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidatingReader
    BaseURI
    System.String)
  (define-field-port
    can-resolve-entity?
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidatingReader
    CanResolveEntity
    System.Boolean)
  (define-field-port
    depth
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidatingReader
    Depth
    System.Int32)
  (define-field-port
    eof?
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidatingReader
    EOF
    System.Boolean)
  (define-field-port
    has-value?
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidatingReader
    HasValue
    System.Boolean)
  (define-field-port
    is-default?
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidatingReader
    IsDefault
    System.Boolean)
  (define-field-port
    is-empty-element?
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidatingReader
    IsEmptyElement
    System.Boolean)
  (define-field-port
    item
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidatingReader
    Item
    System.String)
  (define-field-port
    item
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidatingReader
    Item
    System.String)
  (define-field-port
    item
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidatingReader
    Item
    System.String)
  (define-field-port
    line-number
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidatingReader
    LineNumber
    System.Int32)
  (define-field-port
    line-position
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidatingReader
    LinePosition
    System.Int32)
  (define-field-port
    local-name
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidatingReader
    LocalName
    System.String)
  (define-field-port
    name
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidatingReader
    Name
    System.String)
  (define-field-port
    namespace-uri
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidatingReader
    NamespaceURI
    System.String)
  (define-field-port
    name-table
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidatingReader
    NameTable
    System.Xml.XmlNameTable)
  (define-field-port
    node-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidatingReader
    NodeType
    System.Xml.XmlNodeType)
  (define-field-port
    parser-context
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidatingReader
    ParserContext
    System.Xml.XmlParserContext)
  (define-field-port
    prefix
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidatingReader
    Prefix
    System.String)
  (define-field-port
    quote-char
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidatingReader
    QuoteChar
    System.Char)
  (define-field-port
    read-state
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidatingReader
    ReadState
    System.Xml.ReadState)
  (define-field-port
    value
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidatingReader
    Value
    System.String)
  (define-field-port
    xml-lang
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidatingReader
    XmlLang
    System.String)
  (define-field-port
    xml-space
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdValidatingReader
    XmlSpace
    System.Xml.XmlSpace))
