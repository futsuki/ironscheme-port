(library (system xml serialization soap-code-exporter)
  (export new
          is?
          soap-code-exporter?
          export-type-mapping
          export-members-mapping
          add-mapping-metadata)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Serialization.SoapCodeExporter a ...)))))
  (define (is? a) (clr-is System.Xml.Serialization.SoapCodeExporter a))
  (define (soap-code-exporter? a)
    (clr-is System.Xml.Serialization.SoapCodeExporter a))
  (define-method-port
    export-type-mapping
    System.Xml.Serialization.SoapCodeExporter
    ExportTypeMapping
    (System.Void System.Xml.Serialization.XmlTypeMapping))
  (define-method-port
    export-members-mapping
    System.Xml.Serialization.SoapCodeExporter
    ExportMembersMapping
    (System.Void System.Xml.Serialization.XmlMembersMapping))
  (define-method-port
    add-mapping-metadata
    System.Xml.Serialization.SoapCodeExporter
    AddMappingMetadata
    (System.Void
      System.CodeDom.CodeAttributeDeclarationCollection
      System.Xml.Serialization.XmlMemberMapping
      System.Boolean)
    (System.Void
      System.CodeDom.CodeAttributeDeclarationCollection
      System.Xml.Serialization.XmlMemberMapping)))
