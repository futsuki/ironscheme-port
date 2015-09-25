(library (system xml serialization xml-array-item-attributes)
  (export new
          is?
          xml-array-item-attributes?
          insert
          index-of
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
             System.Xml.Serialization.XmlArrayItemAttributes
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlArrayItemAttributes a))
  (define (xml-array-item-attributes? a)
    (clr-is System.Xml.Serialization.XmlArrayItemAttributes a))
  (define-method-port
    insert
    System.Xml.Serialization.XmlArrayItemAttributes
    Insert
    (System.Void
      System.Int32
      System.Xml.Serialization.XmlArrayItemAttribute))
  (define-method-port
    index-of
    System.Xml.Serialization.XmlArrayItemAttributes
    IndexOf
    (System.Int32 System.Xml.Serialization.XmlArrayItemAttribute))
  (define-method-port
    add
    System.Xml.Serialization.XmlArrayItemAttributes
    Add
    (System.Int32 System.Xml.Serialization.XmlArrayItemAttribute))
  (define-method-port
    contains?
    System.Xml.Serialization.XmlArrayItemAttributes
    Contains
    (System.Boolean System.Xml.Serialization.XmlArrayItemAttribute))
  (define-method-port
    remove
    System.Xml.Serialization.XmlArrayItemAttributes
    Remove
    (System.Void System.Xml.Serialization.XmlArrayItemAttribute))
  (define-method-port
    copy-to
    System.Xml.Serialization.XmlArrayItemAttributes
    CopyTo
    (System.Void
      System.Xml.Serialization.XmlArrayItemAttribute[]
      System.Int32))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Xml.Serialization.XmlArrayItemAttributes
    Item
    System.Xml.Serialization.XmlArrayItemAttribute))
