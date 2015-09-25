(library (system xml serialization code-exporter)
  (export is? code-exporter? include-metadata)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.Serialization.CodeExporter a))
  (define (code-exporter? a)
    (clr-is System.Xml.Serialization.CodeExporter a))
  (define-field-port
    include-metadata
    #f
    #f
    (property:)
    System.Xml.Serialization.CodeExporter
    IncludeMetadata
    System.CodeDom.CodeAttributeDeclarationCollection))
