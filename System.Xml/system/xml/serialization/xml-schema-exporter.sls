(library (system xml serialization xml-schema-exporter)
  (export new
          is?
          xml-schema-exporter?
          export-type-mapping
          export-members-mapping
          export-any-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlSchemaExporter
             a
             ...)))))
  (define (is? a) (clr-is System.Xml.Serialization.XmlSchemaExporter a))
  (define (xml-schema-exporter? a)
    (clr-is System.Xml.Serialization.XmlSchemaExporter a))
  (define-method-port
    export-type-mapping
    System.Xml.Serialization.XmlSchemaExporter
    ExportTypeMapping
    (System.Void System.Xml.Serialization.XmlTypeMapping)
    (System.Xml.XmlQualifiedName
      System.Xml.Serialization.XmlMembersMapping))
  (define-method-port
    export-members-mapping
    System.Xml.Serialization.XmlSchemaExporter
    ExportMembersMapping
    (System.Void
      System.Xml.Serialization.XmlMembersMapping
      System.Boolean)
    (System.Void System.Xml.Serialization.XmlMembersMapping))
  (define-method-port
    export-any-type
    System.Xml.Serialization.XmlSchemaExporter
    ExportAnyType
    (System.String System.Xml.Serialization.XmlMembersMapping)
    (System.String System.String)))
