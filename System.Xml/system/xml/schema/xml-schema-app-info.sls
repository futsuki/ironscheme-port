(library (system xml schema xml-schema-app-info)
  (export new
          is?
          xml-schema-app-info?
          source-get
          source-set!
          source-update!
          markup-get
          markup-set!
          markup-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Schema.XmlSchemaAppInfo a ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaAppInfo a))
  (define (xml-schema-app-info? a)
    (clr-is System.Xml.Schema.XmlSchemaAppInfo a))
  (define-field-port
    source-get
    source-set!
    source-update!
    (property:)
    System.Xml.Schema.XmlSchemaAppInfo
    Source
    System.String)
  (define-field-port
    markup-get
    markup-set!
    markup-update!
    (property:)
    System.Xml.Schema.XmlSchemaAppInfo
    Markup
    System.Xml.XmlNode[]))
