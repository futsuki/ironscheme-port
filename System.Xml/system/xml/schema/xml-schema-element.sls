(library (system xml schema xml-schema-element)
  (export new
          is?
          xml-schema-element?
          is-abstract?-get
          is-abstract?-set!
          is-abstract?-update!
          block-get
          block-set!
          block-update!
          default-value-get
          default-value-set!
          default-value-update!
          final-get
          final-set!
          final-update!
          fixed-value-get
          fixed-value-set!
          fixed-value-update!
          form-get
          form-set!
          form-update!
          name-get
          name-set!
          name-update!
          is-nillable?-get
          is-nillable?-set!
          is-nillable?-update!
          ref-name-get
          ref-name-set!
          ref-name-update!
          substitution-group-get
          substitution-group-set!
          substitution-group-update!
          schema-type-name-get
          schema-type-name-set!
          schema-type-name-update!
          schema-type-get
          schema-type-set!
          schema-type-update!
          constraints
          qualified-name
          element-type
          element-schema-type
          block-resolved
          final-resolved)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Schema.XmlSchemaElement a ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaElement a))
  (define (xml-schema-element? a)
    (clr-is System.Xml.Schema.XmlSchemaElement a))
  (define-field-port
    is-abstract?-get
    is-abstract?-set!
    is-abstract?-update!
    (property:)
    System.Xml.Schema.XmlSchemaElement
    IsAbstract
    System.Boolean)
  (define-field-port
    block-get
    block-set!
    block-update!
    (property:)
    System.Xml.Schema.XmlSchemaElement
    Block
    System.Xml.Schema.XmlSchemaDerivationMethod)
  (define-field-port
    default-value-get
    default-value-set!
    default-value-update!
    (property:)
    System.Xml.Schema.XmlSchemaElement
    DefaultValue
    System.String)
  (define-field-port
    final-get
    final-set!
    final-update!
    (property:)
    System.Xml.Schema.XmlSchemaElement
    Final
    System.Xml.Schema.XmlSchemaDerivationMethod)
  (define-field-port
    fixed-value-get
    fixed-value-set!
    fixed-value-update!
    (property:)
    System.Xml.Schema.XmlSchemaElement
    FixedValue
    System.String)
  (define-field-port
    form-get
    form-set!
    form-update!
    (property:)
    System.Xml.Schema.XmlSchemaElement
    Form
    System.Xml.Schema.XmlSchemaForm)
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.Xml.Schema.XmlSchemaElement
    Name
    System.String)
  (define-field-port
    is-nillable?-get
    is-nillable?-set!
    is-nillable?-update!
    (property:)
    System.Xml.Schema.XmlSchemaElement
    IsNillable
    System.Boolean)
  (define-field-port
    ref-name-get
    ref-name-set!
    ref-name-update!
    (property:)
    System.Xml.Schema.XmlSchemaElement
    RefName
    System.Xml.XmlQualifiedName)
  (define-field-port
    substitution-group-get
    substitution-group-set!
    substitution-group-update!
    (property:)
    System.Xml.Schema.XmlSchemaElement
    SubstitutionGroup
    System.Xml.XmlQualifiedName)
  (define-field-port
    schema-type-name-get
    schema-type-name-set!
    schema-type-name-update!
    (property:)
    System.Xml.Schema.XmlSchemaElement
    SchemaTypeName
    System.Xml.XmlQualifiedName)
  (define-field-port
    schema-type-get
    schema-type-set!
    schema-type-update!
    (property:)
    System.Xml.Schema.XmlSchemaElement
    SchemaType
    System.Xml.Schema.XmlSchemaType)
  (define-field-port
    constraints
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaElement
    Constraints
    System.Xml.Schema.XmlSchemaObjectCollection)
  (define-field-port
    qualified-name
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaElement
    QualifiedName
    System.Xml.XmlQualifiedName)
  (define-field-port
    element-type
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaElement
    ElementType
    System.Object)
  (define-field-port
    element-schema-type
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaElement
    ElementSchemaType
    System.Xml.Schema.XmlSchemaType)
  (define-field-port
    block-resolved
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaElement
    BlockResolved
    System.Xml.Schema.XmlSchemaDerivationMethod)
  (define-field-port
    final-resolved
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaElement
    FinalResolved
    System.Xml.Schema.XmlSchemaDerivationMethod))
