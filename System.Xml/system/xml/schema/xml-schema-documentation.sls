(library (system xml schema xml-schema-documentation)
  (export new
          is?
          xml-schema-documentation?
          markup-get
          markup-set!
          markup-update!
          source-get
          source-set!
          source-update!
          language-get
          language-set!
          language-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Schema.XmlSchemaDocumentation a ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaDocumentation a))
  (define (xml-schema-documentation? a)
    (clr-is System.Xml.Schema.XmlSchemaDocumentation a))
  (define-field-port
    markup-get
    markup-set!
    markup-update!
    (property:)
    System.Xml.Schema.XmlSchemaDocumentation
    Markup
    System.Xml.XmlNode[])
  (define-field-port
    source-get
    source-set!
    source-update!
    (property:)
    System.Xml.Schema.XmlSchemaDocumentation
    Source
    System.String)
  (define-field-port
    language-get
    language-set!
    language-update!
    (property:)
    System.Xml.Schema.XmlSchemaDocumentation
    Language
    System.String))
