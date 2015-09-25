(library (system xml schema xml-schema-annotation)
  (export new
          is?
          xml-schema-annotation?
          id-get
          id-set!
          id-update!
          items
          unhandled-attributes-get
          unhandled-attributes-set!
          unhandled-attributes-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Schema.XmlSchemaAnnotation a ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaAnnotation a))
  (define (xml-schema-annotation? a)
    (clr-is System.Xml.Schema.XmlSchemaAnnotation a))
  (define-field-port
    id-get
    id-set!
    id-update!
    (property:)
    System.Xml.Schema.XmlSchemaAnnotation
    Id
    System.String)
  (define-field-port
    items
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaAnnotation
    Items
    System.Xml.Schema.XmlSchemaObjectCollection)
  (define-field-port
    unhandled-attributes-get
    unhandled-attributes-set!
    unhandled-attributes-update!
    (property:)
    System.Xml.Schema.XmlSchemaAnnotation
    UnhandledAttributes
    System.Xml.XmlAttribute[]))
