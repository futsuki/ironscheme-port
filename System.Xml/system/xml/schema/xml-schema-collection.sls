(library (system xml schema xml-schema-collection)
  (export new
          is?
          xml-schema-collection?
          get-enumerator
          add
          contains?
          copy-to
          count
          name-table
          item)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Schema.XmlSchemaCollection a ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaCollection a))
  (define (xml-schema-collection? a)
    (clr-is System.Xml.Schema.XmlSchemaCollection a))
  (define-method-port
    get-enumerator
    System.Xml.Schema.XmlSchemaCollection
    GetEnumerator
    (System.Xml.Schema.XmlSchemaCollectionEnumerator))
  (define-method-port
    add
    System.Xml.Schema.XmlSchemaCollection
    Add
    (System.Void System.Xml.Schema.XmlSchemaCollection)
    (System.Xml.Schema.XmlSchema
      System.Xml.Schema.XmlSchema
      System.Xml.XmlResolver)
    (System.Xml.Schema.XmlSchema System.Xml.Schema.XmlSchema)
    (System.Xml.Schema.XmlSchema System.String System.String)
    (System.Xml.Schema.XmlSchema
      System.String
      System.Xml.XmlReader
      System.Xml.XmlResolver)
    (System.Xml.Schema.XmlSchema System.String System.Xml.XmlReader))
  (define-method-port
    contains?
    System.Xml.Schema.XmlSchemaCollection
    Contains
    (System.Boolean System.Xml.Schema.XmlSchema)
    (System.Boolean System.String))
  (define-method-port
    copy-to
    System.Xml.Schema.XmlSchemaCollection
    CopyTo
    (System.Void System.Xml.Schema.XmlSchema[] System.Int32))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaCollection
    Count
    System.Int32)
  (define-field-port
    name-table
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaCollection
    NameTable
    System.Xml.XmlNameTable)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaCollection
    Item
    System.Xml.Schema.XmlSchema))
