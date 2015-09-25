(library (system xml serialization xml-any-element-attributes)
  (export new
          is?
          xml-any-element-attributes?
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
             System.Xml.Serialization.XmlAnyElementAttributes
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlAnyElementAttributes a))
  (define (xml-any-element-attributes? a)
    (clr-is System.Xml.Serialization.XmlAnyElementAttributes a))
  (define-method-port
    insert
    System.Xml.Serialization.XmlAnyElementAttributes
    Insert
    (System.Void
      System.Int32
      System.Xml.Serialization.XmlAnyElementAttribute))
  (define-method-port
    index-of
    System.Xml.Serialization.XmlAnyElementAttributes
    IndexOf
    (System.Int32 System.Xml.Serialization.XmlAnyElementAttribute))
  (define-method-port
    add
    System.Xml.Serialization.XmlAnyElementAttributes
    Add
    (System.Int32 System.Xml.Serialization.XmlAnyElementAttribute))
  (define-method-port
    contains?
    System.Xml.Serialization.XmlAnyElementAttributes
    Contains
    (System.Boolean System.Xml.Serialization.XmlAnyElementAttribute))
  (define-method-port
    remove
    System.Xml.Serialization.XmlAnyElementAttributes
    Remove
    (System.Void System.Xml.Serialization.XmlAnyElementAttribute))
  (define-method-port
    copy-to
    System.Xml.Serialization.XmlAnyElementAttributes
    CopyTo
    (System.Void
      System.Xml.Serialization.XmlAnyElementAttribute[]
      System.Int32))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Xml.Serialization.XmlAnyElementAttributes
    Item
    System.Xml.Serialization.XmlAnyElementAttribute))
