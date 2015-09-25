(library (system xml serialization xml-schema-provider-attribute)
  (export new
          is?
          xml-schema-provider-attribute?
          method-name
          is-any?-get
          is-any?-set!
          is-any?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlSchemaProviderAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlSchemaProviderAttribute a))
  (define (xml-schema-provider-attribute? a)
    (clr-is System.Xml.Serialization.XmlSchemaProviderAttribute a))
  (define-field-port
    method-name
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlSchemaProviderAttribute
    MethodName
    System.String)
  (define-field-port
    is-any?-get
    is-any?-set!
    is-any?-update!
    (property:)
    System.Xml.Serialization.XmlSchemaProviderAttribute
    IsAny
    System.Boolean))
