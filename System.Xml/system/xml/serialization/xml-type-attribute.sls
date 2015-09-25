(library (system xml serialization xml-type-attribute)
  (export new
          is?
          xml-type-attribute?
          anonymous-type?-get
          anonymous-type?-set!
          anonymous-type?-update!
          include-in-schema?-get
          include-in-schema?-set!
          include-in-schema?-update!
          namespace-get
          namespace-set!
          namespace-update!
          type-name-get
          type-name-set!
          type-name-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Serialization.XmlTypeAttribute a ...)))))
  (define (is? a) (clr-is System.Xml.Serialization.XmlTypeAttribute a))
  (define (xml-type-attribute? a)
    (clr-is System.Xml.Serialization.XmlTypeAttribute a))
  (define-field-port
    anonymous-type?-get
    anonymous-type?-set!
    anonymous-type?-update!
    (property:)
    System.Xml.Serialization.XmlTypeAttribute
    AnonymousType
    System.Boolean)
  (define-field-port
    include-in-schema?-get
    include-in-schema?-set!
    include-in-schema?-update!
    (property:)
    System.Xml.Serialization.XmlTypeAttribute
    IncludeInSchema
    System.Boolean)
  (define-field-port
    namespace-get
    namespace-set!
    namespace-update!
    (property:)
    System.Xml.Serialization.XmlTypeAttribute
    Namespace
    System.String)
  (define-field-port
    type-name-get
    type-name-set!
    type-name-update!
    (property:)
    System.Xml.Serialization.XmlTypeAttribute
    TypeName
    System.String))
