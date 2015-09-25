(library (mono xml dtdobject-model)
  (export new
          is?
          dtdobject-model?
          add-error
          resolve-entity
          allowed-external-entities-max
          base-uri-get
          base-uri-set!
          base-uri-update!
          is-standalone?-get
          is-standalone?-set!
          is-standalone?-update!
          name-get
          name-set!
          name-update!
          name-table
          public-id-get
          public-id-set!
          public-id-update!
          system-id-get
          system-id-set!
          system-id-update!
          internal-subset-get
          internal-subset-set!
          internal-subset-update!
          internal-subset-has-pereference?-get
          internal-subset-has-pereference?-set!
          internal-subset-has-pereference?-update!
          line-number-get
          line-number-set!
          line-number-update!
          line-position-get
          line-position-set!
          line-position-update!
          xml-resolver
          factory
          root-element
          element-decls
          att-list-decls
          entity-decls
          pedecls
          notation-decls
          root-automata
          empty
          any
          invalid
          errors)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.DTDObjectModel a ...)))))
  (define (is? a) (clr-is Mono.Xml.DTDObjectModel a))
  (define (dtdobject-model? a) (clr-is Mono.Xml.DTDObjectModel a))
  (define-method-port
    add-error
    Mono.Xml.DTDObjectModel
    AddError
    (System.Void System.Xml.Schema.XmlSchemaException))
  (define-method-port
    resolve-entity
    Mono.Xml.DTDObjectModel
    ResolveEntity
    (System.String System.String))
  (define-field-port
    allowed-external-entities-max
    #f
    #f
    (static:)
    Mono.Xml.DTDObjectModel
    AllowedExternalEntitiesMax
    System.Int32)
  (define-field-port
    base-uri-get
    base-uri-set!
    base-uri-update!
    (property:)
    Mono.Xml.DTDObjectModel
    BaseURI
    System.String)
  (define-field-port
    is-standalone?-get
    is-standalone?-set!
    is-standalone?-update!
    (property:)
    Mono.Xml.DTDObjectModel
    IsStandalone
    System.Boolean)
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    Mono.Xml.DTDObjectModel
    Name
    System.String)
  (define-field-port
    name-table
    #f
    #f
    (property:)
    Mono.Xml.DTDObjectModel
    NameTable
    System.Xml.XmlNameTable)
  (define-field-port
    public-id-get
    public-id-set!
    public-id-update!
    (property:)
    Mono.Xml.DTDObjectModel
    PublicId
    System.String)
  (define-field-port
    system-id-get
    system-id-set!
    system-id-update!
    (property:)
    Mono.Xml.DTDObjectModel
    SystemId
    System.String)
  (define-field-port
    internal-subset-get
    internal-subset-set!
    internal-subset-update!
    (property:)
    Mono.Xml.DTDObjectModel
    InternalSubset
    System.String)
  (define-field-port
    internal-subset-has-pereference?-get
    internal-subset-has-pereference?-set!
    internal-subset-has-pereference?-update!
    (property:)
    Mono.Xml.DTDObjectModel
    InternalSubsetHasPEReference
    System.Boolean)
  (define-field-port
    line-number-get
    line-number-set!
    line-number-update!
    (property:)
    Mono.Xml.DTDObjectModel
    LineNumber
    System.Int32)
  (define-field-port
    line-position-get
    line-position-set!
    line-position-update!
    (property:)
    Mono.Xml.DTDObjectModel
    LinePosition
    System.Int32)
  (define-field-port
    #f
    xml-resolver
    #f
    (property:)
    Mono.Xml.DTDObjectModel
    XmlResolver
    System.Xml.XmlResolver)
  (define-field-port
    factory
    #f
    #f
    (property:)
    Mono.Xml.DTDObjectModel
    Factory
    Mono.Xml.DTDAutomataFactory)
  (define-field-port
    root-element
    #f
    #f
    (property:)
    Mono.Xml.DTDObjectModel
    RootElement
    Mono.Xml.DTDElementDeclaration)
  (define-field-port
    element-decls
    #f
    #f
    (property:)
    Mono.Xml.DTDObjectModel
    ElementDecls
    Mono.Xml.DTDElementDeclarationCollection)
  (define-field-port
    att-list-decls
    #f
    #f
    (property:)
    Mono.Xml.DTDObjectModel
    AttListDecls
    Mono.Xml.DTDAttListDeclarationCollection)
  (define-field-port
    entity-decls
    #f
    #f
    (property:)
    Mono.Xml.DTDObjectModel
    EntityDecls
    Mono.Xml.DTDEntityDeclarationCollection)
  (define-field-port
    pedecls
    #f
    #f
    (property:)
    Mono.Xml.DTDObjectModel
    PEDecls
    Mono.Xml.DTDParameterEntityDeclarationCollection)
  (define-field-port
    notation-decls
    #f
    #f
    (property:)
    Mono.Xml.DTDObjectModel
    NotationDecls
    Mono.Xml.DTDNotationDeclarationCollection)
  (define-field-port
    root-automata
    #f
    #f
    (property:)
    Mono.Xml.DTDObjectModel
    RootAutomata
    Mono.Xml.DTDAutomata)
  (define-field-port
    empty
    #f
    #f
    (property:)
    Mono.Xml.DTDObjectModel
    Empty
    Mono.Xml.DTDEmptyAutomata)
  (define-field-port
    any
    #f
    #f
    (property:)
    Mono.Xml.DTDObjectModel
    Any
    Mono.Xml.DTDAnyAutomata)
  (define-field-port
    invalid
    #f
    #f
    (property:)
    Mono.Xml.DTDObjectModel
    Invalid
    Mono.Xml.DTDInvalidAutomata)
  (define-field-port
    errors
    #f
    #f
    (property:)
    Mono.Xml.DTDObjectModel
    Errors
    System.Xml.Schema.XmlSchemaException[]))
