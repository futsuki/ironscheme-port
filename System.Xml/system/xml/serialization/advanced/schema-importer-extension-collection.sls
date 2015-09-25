(library (system
          xml
          serialization
          advanced
          schema-importer-extension-collection)
  (export new
          is?
          schema-importer-extension-collection?
          copy-to
          insert
          index-of
          add
          contains?
          remove
          clear
          item-get
          item-set!
          item-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection
      a))
  (define (schema-importer-extension-collection? a)
    (clr-is
      System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection
      a))
  (define-method-port
    copy-to
    System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection
    CopyTo
    (System.Void
      System.Xml.Serialization.Advanced.SchemaImporterExtension[]
      System.Int32))
  (define-method-port
    insert
    System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection
    Insert
    (System.Void
      System.Int32
      System.Xml.Serialization.Advanced.SchemaImporterExtension))
  (define-method-port
    index-of
    System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection
    IndexOf
    (System.Int32
      System.Xml.Serialization.Advanced.SchemaImporterExtension))
  (define-method-port
    add
    System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection
    Add
    (System.Int32 System.String System.Type)
    (System.Int32
      System.Xml.Serialization.Advanced.SchemaImporterExtension))
  (define-method-port
    contains?
    System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection
    Contains
    (System.Boolean
      System.Xml.Serialization.Advanced.SchemaImporterExtension))
  (define-method-port
    remove
    System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection
    Remove
    (System.Void System.String)
    (System.Void
      System.Xml.Serialization.Advanced.SchemaImporterExtension))
  (define-method-port
    clear
    System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection
    Clear
    (System.Void))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection
    Item
    System.Xml.Serialization.Advanced.SchemaImporterExtension))
