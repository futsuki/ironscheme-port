(library (system xml serialization xml-include-attribute)
  (export new
          is?
          xml-include-attribute?
          type-get
          type-set!
          type-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlIncludeAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlIncludeAttribute a))
  (define (xml-include-attribute? a)
    (clr-is System.Xml.Serialization.XmlIncludeAttribute a))
  (define-field-port
    type-get
    type-set!
    type-update!
    (property:)
    System.Xml.Serialization.XmlIncludeAttribute
    Type
    System.Type))
