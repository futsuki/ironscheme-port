(library (system xml xml-document)
  (export new
          is?
          xml-document?
          create-navigator
          import-node
          clone-node
          create-whitespace
          create-text-node
          get-element-by-id
          get-elements-by-tag-name
          create-node
          create-significant-whitespace
          create-attribute
          load
          write-to
          create-document-type
          create-cdata-section
          create-element
          validate
          save
          write-content-to
          create-xml-declaration
          create-comment
          create-document-fragment
          load-xml
          create-processing-instruction
          create-entity-reference
          read-node
          base-uri
          document-element
          document-type
          implementation
          inner-xml-get
          inner-xml-set!
          inner-xml-update!
          is-read-only?
          local-name
          name
          name-table
          node-type
          owner-document
          preserve-whitespace?-get
          preserve-whitespace?-set!
          preserve-whitespace?-update!
          xml-resolver
          parent-node
          schemas-get
          schemas-set!
          schemas-update!
          schema-info)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XmlDocument a ...)))))
  (define (is? a) (clr-is System.Xml.XmlDocument a))
  (define (xml-document? a) (clr-is System.Xml.XmlDocument a))
  (define-method-port
    create-navigator
    System.Xml.XmlDocument
    CreateNavigator
    (System.Xml.XPath.XPathNavigator))
  (define-method-port
    import-node
    System.Xml.XmlDocument
    ImportNode
    (System.Xml.XmlNode System.Xml.XmlNode System.Boolean))
  (define-method-port
    clone-node
    System.Xml.XmlDocument
    CloneNode
    (System.Xml.XmlNode System.Boolean))
  (define-method-port
    create-whitespace
    System.Xml.XmlDocument
    CreateWhitespace
    (System.Xml.XmlWhitespace System.String))
  (define-method-port
    create-text-node
    System.Xml.XmlDocument
    CreateTextNode
    (System.Xml.XmlText System.String))
  (define-method-port
    get-element-by-id
    System.Xml.XmlDocument
    GetElementById
    (System.Xml.XmlElement System.String))
  (define-method-port
    get-elements-by-tag-name
    System.Xml.XmlDocument
    GetElementsByTagName
    (System.Xml.XmlNodeList System.String System.String)
    (System.Xml.XmlNodeList System.String))
  (define-method-port
    create-node
    System.Xml.XmlDocument
    CreateNode
    (System.Xml.XmlNode
      System.Xml.XmlNodeType
      System.String
      System.String
      System.String)
    (System.Xml.XmlNode
      System.Xml.XmlNodeType
      System.String
      System.String)
    (System.Xml.XmlNode System.String System.String System.String))
  (define-method-port
    create-significant-whitespace
    System.Xml.XmlDocument
    CreateSignificantWhitespace
    (System.Xml.XmlSignificantWhitespace System.String))
  (define-method-port
    create-attribute
    System.Xml.XmlDocument
    CreateAttribute
    (System.Xml.XmlAttribute System.String System.String System.String)
    (System.Xml.XmlAttribute System.String System.String)
    (System.Xml.XmlAttribute System.String))
  (define-method-port
    load
    System.Xml.XmlDocument
    Load
    (System.Void System.Xml.XmlReader)
    (System.Void System.IO.TextReader)
    (System.Void System.String)
    (System.Void System.IO.Stream))
  (define-method-port
    write-to
    System.Xml.XmlDocument
    WriteTo
    (System.Void System.Xml.XmlWriter))
  (define-method-port
    create-document-type
    System.Xml.XmlDocument
    CreateDocumentType
    (System.Xml.XmlDocumentType
      System.String
      System.String
      System.String
      System.String))
  (define-method-port
    create-cdata-section
    System.Xml.XmlDocument
    CreateCDataSection
    (System.Xml.XmlCDataSection System.String))
  (define-method-port
    create-element
    System.Xml.XmlDocument
    CreateElement
    (System.Xml.XmlElement System.String System.String System.String)
    (System.Xml.XmlElement System.String System.String)
    (System.Xml.XmlElement System.String))
  (define-method-port
    validate
    System.Xml.XmlDocument
    Validate
    (System.Void
      System.Xml.Schema.ValidationEventHandler
      System.Xml.XmlNode)
    (System.Void System.Xml.Schema.ValidationEventHandler))
  (define-method-port
    save
    System.Xml.XmlDocument
    Save
    (System.Void System.Xml.XmlWriter)
    (System.Void System.IO.TextWriter)
    (System.Void System.String)
    (System.Void System.IO.Stream))
  (define-method-port
    write-content-to
    System.Xml.XmlDocument
    WriteContentTo
    (System.Void System.Xml.XmlWriter))
  (define-method-port
    create-xml-declaration
    System.Xml.XmlDocument
    CreateXmlDeclaration
    (System.Xml.XmlDeclaration
      System.String
      System.String
      System.String))
  (define-method-port
    create-comment
    System.Xml.XmlDocument
    CreateComment
    (System.Xml.XmlComment System.String))
  (define-method-port
    create-document-fragment
    System.Xml.XmlDocument
    CreateDocumentFragment
    (System.Xml.XmlDocumentFragment))
  (define-method-port
    load-xml
    System.Xml.XmlDocument
    LoadXml
    (System.Void System.String))
  (define-method-port
    create-processing-instruction
    System.Xml.XmlDocument
    CreateProcessingInstruction
    (System.Xml.XmlProcessingInstruction System.String System.String))
  (define-method-port
    create-entity-reference
    System.Xml.XmlDocument
    CreateEntityReference
    (System.Xml.XmlEntityReference System.String))
  (define-method-port
    read-node
    System.Xml.XmlDocument
    ReadNode
    (System.Xml.XmlNode System.Xml.XmlReader))
  (define-field-port
    base-uri
    #f
    #f
    (property:)
    System.Xml.XmlDocument
    BaseURI
    System.String)
  (define-field-port
    document-element
    #f
    #f
    (property:)
    System.Xml.XmlDocument
    DocumentElement
    System.Xml.XmlElement)
  (define-field-port
    document-type
    #f
    #f
    (property:)
    System.Xml.XmlDocument
    DocumentType
    System.Xml.XmlDocumentType)
  (define-field-port
    implementation
    #f
    #f
    (property:)
    System.Xml.XmlDocument
    Implementation
    System.Xml.XmlImplementation)
  (define-field-port
    inner-xml-get
    inner-xml-set!
    inner-xml-update!
    (property:)
    System.Xml.XmlDocument
    InnerXml
    System.String)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Xml.XmlDocument
    IsReadOnly
    System.Boolean)
  (define-field-port
    local-name
    #f
    #f
    (property:)
    System.Xml.XmlDocument
    LocalName
    System.String)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Xml.XmlDocument
    Name
    System.String)
  (define-field-port
    name-table
    #f
    #f
    (property:)
    System.Xml.XmlDocument
    NameTable
    System.Xml.XmlNameTable)
  (define-field-port
    node-type
    #f
    #f
    (property:)
    System.Xml.XmlDocument
    NodeType
    System.Xml.XmlNodeType)
  (define-field-port
    owner-document
    #f
    #f
    (property:)
    System.Xml.XmlDocument
    OwnerDocument
    System.Xml.XmlDocument)
  (define-field-port
    preserve-whitespace?-get
    preserve-whitespace?-set!
    preserve-whitespace?-update!
    (property:)
    System.Xml.XmlDocument
    PreserveWhitespace
    System.Boolean)
  (define-field-port
    #f
    xml-resolver
    #f
    (property:)
    System.Xml.XmlDocument
    XmlResolver
    System.Xml.XmlResolver)
  (define-field-port
    parent-node
    #f
    #f
    (property:)
    System.Xml.XmlDocument
    ParentNode
    System.Xml.XmlNode)
  (define-field-port
    schemas-get
    schemas-set!
    schemas-update!
    (property:)
    System.Xml.XmlDocument
    Schemas
    System.Xml.Schema.XmlSchemaSet)
  (define-field-port
    schema-info
    #f
    #f
    (property:)
    System.Xml.XmlDocument
    SchemaInfo
    System.Xml.Schema.IXmlSchemaInfo))
