(library (system xml serialization xml-enum-attribute)
  (export new is? xml-enum-attribute? name-get name-set! name-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Serialization.XmlEnumAttribute a ...)))))
  (define (is? a) (clr-is System.Xml.Serialization.XmlEnumAttribute a))
  (define (xml-enum-attribute? a)
    (clr-is System.Xml.Serialization.XmlEnumAttribute a))
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.Xml.Serialization.XmlEnumAttribute
    Name
    System.String))
