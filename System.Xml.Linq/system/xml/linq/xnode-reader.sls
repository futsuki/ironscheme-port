(library (system xml linq xnode-reader)
  (export new
          is?
          xnode-reader?
          read?
          move-to-next-attribute?
          lookup-namespace
          move-to-first-attribute?
          get-attribute
          resolve-entity
          read-attribute-value?
          move-to-attribute?
          move-to-element?
          close
          attribute-count
          base-uri
          depth
          eof?
          has-attributes?
          has-value?
          is-empty-element?
          local-name
          namespace-uri
          name-table
          node-type
          prefix
          read-state
          value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.Linq.XNodeReader a ...)))))
  (define (is? a) (clr-is System.Xml.Linq.XNodeReader a))
  (define (xnode-reader? a) (clr-is System.Xml.Linq.XNodeReader a))
  (define-method-port
    read?
    System.Xml.Linq.XNodeReader
    Read
    (System.Boolean))
  (define-method-port
    move-to-next-attribute?
    System.Xml.Linq.XNodeReader
    MoveToNextAttribute
    (System.Boolean))
  (define-method-port
    lookup-namespace
    System.Xml.Linq.XNodeReader
    LookupNamespace
    (System.String System.String))
  (define-method-port
    move-to-first-attribute?
    System.Xml.Linq.XNodeReader
    MoveToFirstAttribute
    (System.Boolean))
  (define-method-port
    get-attribute
    System.Xml.Linq.XNodeReader
    GetAttribute
    (System.String System.String System.String)
    (System.String System.String)
    (System.String System.Int32))
  (define-method-port
    resolve-entity
    System.Xml.Linq.XNodeReader
    ResolveEntity
    (System.Void))
  (define-method-port
    read-attribute-value?
    System.Xml.Linq.XNodeReader
    ReadAttributeValue
    (System.Boolean))
  (define-method-port
    move-to-attribute?
    System.Xml.Linq.XNodeReader
    MoveToAttribute
    (System.Boolean System.String System.String)
    (System.Boolean System.String))
  (define-method-port
    move-to-element?
    System.Xml.Linq.XNodeReader
    MoveToElement
    (System.Boolean))
  (define-method-port
    close
    System.Xml.Linq.XNodeReader
    Close
    (System.Void))
  (define-field-port
    attribute-count
    #f
    #f
    (property:)
    System.Xml.Linq.XNodeReader
    AttributeCount
    System.Int32)
  (define-field-port
    base-uri
    #f
    #f
    (property:)
    System.Xml.Linq.XNodeReader
    BaseURI
    System.String)
  (define-field-port
    depth
    #f
    #f
    (property:)
    System.Xml.Linq.XNodeReader
    Depth
    System.Int32)
  (define-field-port
    eof?
    #f
    #f
    (property:)
    System.Xml.Linq.XNodeReader
    EOF
    System.Boolean)
  (define-field-port
    has-attributes?
    #f
    #f
    (property:)
    System.Xml.Linq.XNodeReader
    HasAttributes
    System.Boolean)
  (define-field-port
    has-value?
    #f
    #f
    (property:)
    System.Xml.Linq.XNodeReader
    HasValue
    System.Boolean)
  (define-field-port
    is-empty-element?
    #f
    #f
    (property:)
    System.Xml.Linq.XNodeReader
    IsEmptyElement
    System.Boolean)
  (define-field-port
    local-name
    #f
    #f
    (property:)
    System.Xml.Linq.XNodeReader
    LocalName
    System.String)
  (define-field-port
    namespace-uri
    #f
    #f
    (property:)
    System.Xml.Linq.XNodeReader
    NamespaceURI
    System.String)
  (define-field-port
    name-table
    #f
    #f
    (property:)
    System.Xml.Linq.XNodeReader
    NameTable
    System.Xml.XmlNameTable)
  (define-field-port
    node-type
    #f
    #f
    (property:)
    System.Xml.Linq.XNodeReader
    NodeType
    System.Xml.XmlNodeType)
  (define-field-port
    prefix
    #f
    #f
    (property:)
    System.Xml.Linq.XNodeReader
    Prefix
    System.String)
  (define-field-port
    read-state
    #f
    #f
    (property:)
    System.Xml.Linq.XNodeReader
    ReadState
    System.Xml.ReadState)
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Xml.Linq.XNodeReader
    Value
    System.String))