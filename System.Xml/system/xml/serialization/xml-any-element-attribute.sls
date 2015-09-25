(library (system xml serialization xml-any-element-attribute)
  (export new
          is?
          xml-any-element-attribute?
          name-get
          name-set!
          name-update!
          namespace-get
          namespace-set!
          namespace-update!
          order-get
          order-set!
          order-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlAnyElementAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlAnyElementAttribute a))
  (define (xml-any-element-attribute? a)
    (clr-is System.Xml.Serialization.XmlAnyElementAttribute a))
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.Xml.Serialization.XmlAnyElementAttribute
    Name
    System.String)
  (define-field-port
    namespace-get
    namespace-set!
    namespace-update!
    (property:)
    System.Xml.Serialization.XmlAnyElementAttribute
    Namespace
    System.String)
  (define-field-port
    order-get
    order-set!
    order-update!
    (property:)
    System.Xml.Serialization.XmlAnyElementAttribute
    Order
    System.Int32))
