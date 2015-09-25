(library (system xml serialization xml-type-map-member)
  (export new
          is?
          xml-type-map-member?
          get-value-specified?
          check-optional-value-type
          is-read-only?
          set-value
          set-value-specified
          get-value
          name-get
          name-set!
          name-update!
          default-value-get
          default-value-set!
          default-value-update!
          documentation-get
          documentation-set!
          documentation-update!
          type-data-get
          type-data-set!
          type-data-update!
          index-get
          index-set!
          index-update!
          global-index-get
          global-index-set!
          global-index-update!
          is-optional-value-type?-get
          is-optional-value-type?-set!
          is-optional-value-type?-update!
          is-return-value?-get
          is-return-value?-set!
          is-return-value?-update!
          ignore?-get
          ignore?-set!
          ignore?-update!
          requires-nullable?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Serialization.XmlTypeMapMember a ...)))))
  (define (is? a) (clr-is System.Xml.Serialization.XmlTypeMapMember a))
  (define (xml-type-map-member? a)
    (clr-is System.Xml.Serialization.XmlTypeMapMember a))
  (define-method-port
    get-value-specified?
    System.Xml.Serialization.XmlTypeMapMember
    GetValueSpecified
    (System.Boolean System.Object))
  (define-method-port
    check-optional-value-type
    System.Xml.Serialization.XmlTypeMapMember
    CheckOptionalValueType
    (System.Void System.Type))
  (define-method-port
    is-read-only?
    System.Xml.Serialization.XmlTypeMapMember
    IsReadOnly
    (System.Boolean System.Type))
  (define-method-port
    set-value
    System.Xml.Serialization.XmlTypeMapMember
    SetValue
    (static: System.Void System.Object System.String System.Object)
    (System.Void System.Object System.Object))
  (define-method-port
    set-value-specified
    System.Xml.Serialization.XmlTypeMapMember
    SetValueSpecified
    (System.Void System.Object System.Boolean))
  (define-method-port
    get-value
    System.Xml.Serialization.XmlTypeMapMember
    GetValue
    (System.Object System.Object)
    (static: System.Object System.Object System.String))
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.Xml.Serialization.XmlTypeMapMember
    Name
    System.String)
  (define-field-port
    default-value-get
    default-value-set!
    default-value-update!
    (property:)
    System.Xml.Serialization.XmlTypeMapMember
    DefaultValue
    System.Object)
  (define-field-port
    documentation-get
    documentation-set!
    documentation-update!
    (property:)
    System.Xml.Serialization.XmlTypeMapMember
    Documentation
    System.String)
  (define-field-port
    type-data-get
    type-data-set!
    type-data-update!
    (property:)
    System.Xml.Serialization.XmlTypeMapMember
    TypeData
    System.Xml.Serialization.TypeData)
  (define-field-port
    index-get
    index-set!
    index-update!
    (property:)
    System.Xml.Serialization.XmlTypeMapMember
    Index
    System.Int32)
  (define-field-port
    global-index-get
    global-index-set!
    global-index-update!
    (property:)
    System.Xml.Serialization.XmlTypeMapMember
    GlobalIndex
    System.Int32)
  (define-field-port
    is-optional-value-type?-get
    is-optional-value-type?-set!
    is-optional-value-type?-update!
    (property:)
    System.Xml.Serialization.XmlTypeMapMember
    IsOptionalValueType
    System.Boolean)
  (define-field-port
    is-return-value?-get
    is-return-value?-set!
    is-return-value?-update!
    (property:)
    System.Xml.Serialization.XmlTypeMapMember
    IsReturnValue
    System.Boolean)
  (define-field-port
    ignore?-get
    ignore?-set!
    ignore?-update!
    (property:)
    System.Xml.Serialization.XmlTypeMapMember
    Ignore
    System.Boolean)
  (define-field-port
    requires-nullable?
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlTypeMapMember
    RequiresNullable
    System.Boolean))
