(library (system xml schema xml-schema-object-collection)
  (export new
          is?
          xml-schema-object-collection?
          insert
          index-of
          get-enumerator
          add
          contains?
          remove
          copy-to
          item-get
          item-set!
          item-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Schema.XmlSchemaObjectCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Schema.XmlSchemaObjectCollection a))
  (define (xml-schema-object-collection? a)
    (clr-is System.Xml.Schema.XmlSchemaObjectCollection a))
  (define-method-port
    insert
    System.Xml.Schema.XmlSchemaObjectCollection
    Insert
    (System.Void System.Int32 System.Xml.Schema.XmlSchemaObject))
  (define-method-port
    index-of
    System.Xml.Schema.XmlSchemaObjectCollection
    IndexOf
    (System.Int32 System.Xml.Schema.XmlSchemaObject))
  (define-method-port
    get-enumerator
    System.Xml.Schema.XmlSchemaObjectCollection
    GetEnumerator
    (System.Xml.Schema.XmlSchemaObjectEnumerator))
  (define-method-port
    add
    System.Xml.Schema.XmlSchemaObjectCollection
    Add
    (System.Int32 System.Xml.Schema.XmlSchemaObject))
  (define-method-port
    contains?
    System.Xml.Schema.XmlSchemaObjectCollection
    Contains
    (System.Boolean System.Xml.Schema.XmlSchemaObject))
  (define-method-port
    remove
    System.Xml.Schema.XmlSchemaObjectCollection
    Remove
    (System.Void System.Xml.Schema.XmlSchemaObject))
  (define-method-port
    copy-to
    System.Xml.Schema.XmlSchemaObjectCollection
    CopyTo
    (System.Void System.Xml.Schema.XmlSchemaObject[] System.Int32))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Xml.Schema.XmlSchemaObjectCollection
    Item
    System.Xml.Schema.XmlSchemaObject))
