(library (system xml serialization xml-code-exporter)
  (export new
          is?
          xml-code-exporter?
          export-type-mapping
          export-members-mapping
          add-mapping-metadata)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Serialization.XmlCodeExporter a ...)))))
  (define (is? a) (clr-is System.Xml.Serialization.XmlCodeExporter a))
  (define (xml-code-exporter? a)
    (clr-is System.Xml.Serialization.XmlCodeExporter a))
  (define-method-port
    export-type-mapping
    System.Xml.Serialization.XmlCodeExporter
    ExportTypeMapping
    (System.Void System.Xml.Serialization.XmlTypeMapping))
  (define-method-port
    export-members-mapping
    System.Xml.Serialization.XmlCodeExporter
    ExportMembersMapping
    (System.Void System.Xml.Serialization.XmlMembersMapping))
  (define-method-port
    add-mapping-metadata
    System.Xml.Serialization.XmlCodeExporter
    AddMappingMetadata
    (System.Void
      System.CodeDom.CodeAttributeDeclarationCollection
      System.Xml.Serialization.XmlMemberMapping
      System.String
      System.Boolean)
    (System.Void
      System.CodeDom.CodeAttributeDeclarationCollection
      System.Xml.Serialization.XmlTypeMapping
      System.String)
    (System.Void
      System.CodeDom.CodeAttributeDeclarationCollection
      System.Xml.Serialization.XmlMemberMapping
      System.String)))
