(library (system xml schema xml-schema-simple-type-union)
  (export new
          is?
          xml-schema-simple-type-union?
          base-types
          member-types-get
          member-types-set!
          member-types-update!
          base-member-types)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Schema.XmlSchemaSimpleTypeUnion
             a
             ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaSimpleTypeUnion a))
  (define (xml-schema-simple-type-union? a)
    (clr-is System.Xml.Schema.XmlSchemaSimpleTypeUnion a))
  (define-field-port
    base-types
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaSimpleTypeUnion
    BaseTypes
    System.Xml.Schema.XmlSchemaObjectCollection)
  (define-field-port
    member-types-get
    member-types-set!
    member-types-update!
    (property:)
    System.Xml.Schema.XmlSchemaSimpleTypeUnion
    MemberTypes
    System.Xml.XmlQualifiedName[])
  (define-field-port
    base-member-types
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaSimpleTypeUnion
    BaseMemberTypes
    System.Xml.Schema.XmlSchemaSimpleType[]))
