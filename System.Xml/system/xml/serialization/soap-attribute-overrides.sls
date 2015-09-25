(library (system xml serialization soap-attribute-overrides)
  (export new is? soap-attribute-overrides? add item item)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.SoapAttributeOverrides
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.SoapAttributeOverrides a))
  (define (soap-attribute-overrides? a)
    (clr-is System.Xml.Serialization.SoapAttributeOverrides a))
  (define-method-port
    add
    System.Xml.Serialization.SoapAttributeOverrides
    Add
    (System.Void
      System.Type
      System.String
      System.Xml.Serialization.SoapAttributes)
    (System.Void System.Type System.Xml.Serialization.SoapAttributes))
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Xml.Serialization.SoapAttributeOverrides
    Item
    System.Xml.Serialization.SoapAttributes)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Xml.Serialization.SoapAttributeOverrides
    Item
    System.Xml.Serialization.SoapAttributes))
