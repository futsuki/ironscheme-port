(library (system xml schema xml-schema-object-table)
  (export is?
          xml-schema-object-table?
          get-enumerator
          contains?
          count
          item
          names
          values)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaObjectTable a))
  (define (xml-schema-object-table? a)
    (clr-is System.Xml.Schema.XmlSchemaObjectTable a))
  (define-method-port
    get-enumerator
    System.Xml.Schema.XmlSchemaObjectTable
    GetEnumerator
    (System.Collections.IDictionaryEnumerator))
  (define-method-port
    contains?
    System.Xml.Schema.XmlSchemaObjectTable
    Contains
    (System.Boolean System.Xml.XmlQualifiedName))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaObjectTable
    Count
    System.Int32)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaObjectTable
    Item
    System.Xml.Schema.XmlSchemaObject)
  (define-field-port
    names
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaObjectTable
    Names
    System.Collections.ICollection)
  (define-field-port
    values
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaObjectTable
    Values
    System.Collections.ICollection))
