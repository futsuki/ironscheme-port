(library (system xml serialization xml-element-attributes)
  (export new
          is?
          xml-element-attributes?
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
             System.Xml.Serialization.XmlElementAttributes
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlElementAttributes a))
  (define (xml-element-attributes? a)
    (clr-is System.Xml.Serialization.XmlElementAttributes a))
  (define-method-port
    insert
    System.Xml.Serialization.XmlElementAttributes
    Insert
    (System.Void
      System.Int32
      System.Xml.Serialization.XmlElementAttribute))
  (define-method-port
    index-of
    System.Xml.Serialization.XmlElementAttributes
    IndexOf
    (System.Int32 System.Xml.Serialization.XmlElementAttribute))
  (define-method-port
    add
    System.Xml.Serialization.XmlElementAttributes
    Add
    (System.Int32 System.Xml.Serialization.XmlElementAttribute))
  (define-method-port
    contains?
    System.Xml.Serialization.XmlElementAttributes
    Contains
    (System.Boolean System.Xml.Serialization.XmlElementAttribute))
  (define-method-port
    remove
    System.Xml.Serialization.XmlElementAttributes
    Remove
    (System.Void System.Xml.Serialization.XmlElementAttribute))
  (define-method-port
    copy-to
    System.Xml.Serialization.XmlElementAttributes
    CopyTo
    (System.Void
      System.Xml.Serialization.XmlElementAttribute[]
      System.Int32))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Xml.Serialization.XmlElementAttributes
    Item
    System.Xml.Serialization.XmlElementAttribute))
