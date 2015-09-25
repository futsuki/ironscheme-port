(library (system xml schema xml-schema-datatype)
  (export is?
          xml-schema-datatype?
          parse-value
          change-type
          is-derived-from?
          type-code
          variety
          tokenized-type
          value-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaDatatype a))
  (define (xml-schema-datatype? a)
    (clr-is System.Xml.Schema.XmlSchemaDatatype a))
  (define-method-port
    parse-value
    System.Xml.Schema.XmlSchemaDatatype
    ParseValue
    (System.Object
      System.String
      System.Xml.XmlNameTable
      System.Xml.IXmlNamespaceResolver))
  (define-method-port
    change-type
    System.Xml.Schema.XmlSchemaDatatype
    ChangeType
    (System.Object
      System.Object
      System.Type
      System.Xml.IXmlNamespaceResolver)
    (System.Object System.Object System.Type))
  (define-method-port
    is-derived-from?
    System.Xml.Schema.XmlSchemaDatatype
    IsDerivedFrom
    (System.Boolean System.Xml.Schema.XmlSchemaDatatype))
  (define-field-port
    type-code
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaDatatype
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    variety
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaDatatype
    Variety
    System.Xml.Schema.XmlSchemaDatatypeVariety)
  (define-field-port
    tokenized-type
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaDatatype
    TokenizedType
    System.Xml.XmlTokenizedType)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaDatatype
    ValueType
    System.Type))
