(library (system xml schema xml-schema-notation)
  (export new
          is?
          xml-schema-notation?
          name-get
          name-set!
          name-update!
          public-get
          public-set!
          public-update!
          system-get
          system-set!
          system-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Schema.XmlSchemaNotation a ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaNotation a))
  (define (xml-schema-notation? a)
    (clr-is System.Xml.Schema.XmlSchemaNotation a))
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.Xml.Schema.XmlSchemaNotation
    Name
    System.String)
  (define-field-port
    public-get
    public-set!
    public-update!
    (property:)
    System.Xml.Schema.XmlSchemaNotation
    Public
    System.String)
  (define-field-port
    system-get
    system-set!
    system-update!
    (property:)
    System.Xml.Schema.XmlSchemaNotation
    System
    System.String))
