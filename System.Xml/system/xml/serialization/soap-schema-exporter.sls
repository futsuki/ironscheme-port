(library (system xml serialization soap-schema-exporter)
  (export new
          is?
          soap-schema-exporter?
          export-type-mapping
          export-members-mapping)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.SoapSchemaExporter
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.SoapSchemaExporter a))
  (define (soap-schema-exporter? a)
    (clr-is System.Xml.Serialization.SoapSchemaExporter a))
  (define-method-port
    export-type-mapping
    System.Xml.Serialization.SoapSchemaExporter
    ExportTypeMapping
    (System.Void System.Xml.Serialization.XmlTypeMapping))
  (define-method-port
    export-members-mapping
    System.Xml.Serialization.SoapSchemaExporter
    ExportMembersMapping
    (System.Void
      System.Xml.Serialization.XmlMembersMapping
      System.Boolean)
    (System.Void System.Xml.Serialization.XmlMembersMapping)))
