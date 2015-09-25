(library (system xml serialization xml-type-map-member-attribute)
  (export new
          is?
          xml-type-map-member-attribute?
          attribute-name-get
          attribute-name-set!
          attribute-name-update!
          namespace-get
          namespace-set!
          namespace-update!
          data-type-namespace
          form-get
          form-set!
          form-update!
          mapped-type-get
          mapped-type-set!
          mapped-type-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlTypeMapMemberAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlTypeMapMemberAttribute a))
  (define (xml-type-map-member-attribute? a)
    (clr-is System.Xml.Serialization.XmlTypeMapMemberAttribute a))
  (define-field-port
    attribute-name-get
    attribute-name-set!
    attribute-name-update!
    (property:)
    System.Xml.Serialization.XmlTypeMapMemberAttribute
    AttributeName
    System.String)
  (define-field-port
    namespace-get
    namespace-set!
    namespace-update!
    (property:)
    System.Xml.Serialization.XmlTypeMapMemberAttribute
    Namespace
    System.String)
  (define-field-port
    data-type-namespace
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlTypeMapMemberAttribute
    DataTypeNamespace
    System.String)
  (define-field-port
    form-get
    form-set!
    form-update!
    (property:)
    System.Xml.Serialization.XmlTypeMapMemberAttribute
    Form
    System.Xml.Schema.XmlSchemaForm)
  (define-field-port
    mapped-type-get
    mapped-type-set!
    mapped-type-update!
    (property:)
    System.Xml.Serialization.XmlTypeMapMemberAttribute
    MappedType
    System.Xml.Serialization.XmlTypeMapping))
