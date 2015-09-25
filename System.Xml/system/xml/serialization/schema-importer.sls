(library (system xml serialization schema-importer)
  (export is? schema-importer? extensions)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.Serialization.SchemaImporter a))
  (define (schema-importer? a)
    (clr-is System.Xml.Serialization.SchemaImporter a))
  (define-field-port
    extensions
    #f
    #f
    (property:)
    System.Xml.Serialization.SchemaImporter
    Extensions
    System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection))
