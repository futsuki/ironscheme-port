(library (system xml serialization xml-text-attribute)
  (export new
          is?
          xml-text-attribute?
          data-type-get
          data-type-set!
          data-type-update!
          type-get
          type-set!
          type-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Serialization.XmlTextAttribute a ...)))))
  (define (is? a) (clr-is System.Xml.Serialization.XmlTextAttribute a))
  (define (xml-text-attribute? a)
    (clr-is System.Xml.Serialization.XmlTextAttribute a))
  (define-field-port
    data-type-get
    data-type-set!
    data-type-update!
    (property:)
    System.Xml.Serialization.XmlTextAttribute
    DataType
    System.String)
  (define-field-port
    type-get
    type-set!
    type-update!
    (property:)
    System.Xml.Serialization.XmlTextAttribute
    Type
    System.Type))
