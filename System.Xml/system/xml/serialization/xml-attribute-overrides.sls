(library (system xml serialization xml-attribute-overrides)
  (export new is? xml-attribute-overrides? add item item)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlAttributeOverrides
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlAttributeOverrides a))
  (define (xml-attribute-overrides? a)
    (clr-is System.Xml.Serialization.XmlAttributeOverrides a))
  (define-method-port
    add
    System.Xml.Serialization.XmlAttributeOverrides
    Add
    (System.Void
      System.Type
      System.String
      System.Xml.Serialization.XmlAttributes)
    (System.Void System.Type System.Xml.Serialization.XmlAttributes))
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlAttributeOverrides
    Item
    System.Xml.Serialization.XmlAttributes)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlAttributeOverrides
    Item
    System.Xml.Serialization.XmlAttributes))
