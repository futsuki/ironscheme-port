(library (system xml serialization xml-schemas)
  (export new
          is?
          xml-schemas?
          find
          get-schemas
          index-of
          add
          contains?
          remove
          compile
          is-data-set?
          add-reference
          insert
          copy-to
          item-get
          item-set!
          item-update!
          item
          is-compiled?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Serialization.XmlSchemas a ...)))))
  (define (is? a) (clr-is System.Xml.Serialization.XmlSchemas a))
  (define (xml-schemas? a)
    (clr-is System.Xml.Serialization.XmlSchemas a))
  (define-method-port
    find
    System.Xml.Serialization.XmlSchemas
    Find
    (System.Object System.Xml.XmlQualifiedName System.Type))
  (define-method-port
    get-schemas
    System.Xml.Serialization.XmlSchemas
    GetSchemas
    (System.Collections.IList System.String))
  (define-method-port
    index-of
    System.Xml.Serialization.XmlSchemas
    IndexOf
    (System.Int32 System.Xml.Schema.XmlSchema))
  (define-method-port
    add
    System.Xml.Serialization.XmlSchemas
    Add
    (System.Int32 System.Xml.Schema.XmlSchema System.Uri)
    (System.Void System.Xml.Serialization.XmlSchemas)
    (System.Int32 System.Xml.Schema.XmlSchema))
  (define-method-port
    contains?
    System.Xml.Serialization.XmlSchemas
    Contains
    (System.Boolean System.String)
    (System.Boolean System.Xml.Schema.XmlSchema))
  (define-method-port
    remove
    System.Xml.Serialization.XmlSchemas
    Remove
    (System.Void System.Xml.Schema.XmlSchema))
  (define-method-port
    compile
    System.Xml.Serialization.XmlSchemas
    Compile
    (System.Void
      System.Xml.Schema.ValidationEventHandler
      System.Boolean))
  (define-method-port
    is-data-set?
    System.Xml.Serialization.XmlSchemas
    IsDataSet
    (static: System.Boolean System.Xml.Schema.XmlSchema))
  (define-method-port
    add-reference
    System.Xml.Serialization.XmlSchemas
    AddReference
    (System.Void System.Xml.Schema.XmlSchema))
  (define-method-port
    insert
    System.Xml.Serialization.XmlSchemas
    Insert
    (System.Void System.Int32 System.Xml.Schema.XmlSchema))
  (define-method-port
    copy-to
    System.Xml.Serialization.XmlSchemas
    CopyTo
    (System.Void System.Xml.Schema.XmlSchema[] System.Int32))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Xml.Serialization.XmlSchemas
    Item
    System.Xml.Schema.XmlSchema)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlSchemas
    Item
    System.Xml.Schema.XmlSchema)
  (define-field-port
    is-compiled?
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlSchemas
    IsCompiled
    System.Boolean))
