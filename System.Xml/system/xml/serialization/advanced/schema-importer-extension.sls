(library (system xml serialization advanced schema-importer-extension)
  (export is?
          schema-importer-extension?
          import-default-value
          import-schema-type
          import-any-element)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      System.Xml.Serialization.Advanced.SchemaImporterExtension
      a))
  (define (schema-importer-extension? a)
    (clr-is
      System.Xml.Serialization.Advanced.SchemaImporterExtension
      a))
  (define-method-port
    import-default-value
    System.Xml.Serialization.Advanced.SchemaImporterExtension
    ImportDefaultValue
    (System.CodeDom.CodeExpression System.String System.String))
  (define-method-port
    import-schema-type
    System.Xml.Serialization.Advanced.SchemaImporterExtension
    ImportSchemaType
    (System.String
      System.String
      System.String
      System.Xml.Schema.XmlSchemaObject
      System.Xml.Serialization.XmlSchemas
      System.Xml.Serialization.XmlSchemaImporter
      System.CodeDom.CodeCompileUnit
      System.CodeDom.CodeNamespace
      System.Xml.Serialization.CodeGenerationOptions
      System.CodeDom.Compiler.CodeDomProvider)
    (System.String
      System.Xml.Schema.XmlSchemaType
      System.Xml.Schema.XmlSchemaObject
      System.Xml.Serialization.XmlSchemas
      System.Xml.Serialization.XmlSchemaImporter
      System.CodeDom.CodeCompileUnit
      System.CodeDom.CodeNamespace
      System.Xml.Serialization.CodeGenerationOptions
      System.CodeDom.Compiler.CodeDomProvider))
  (define-method-port
    import-any-element
    System.Xml.Serialization.Advanced.SchemaImporterExtension
    ImportAnyElement
    (System.String
      System.Xml.Schema.XmlSchemaAny
      System.Boolean
      System.Xml.Serialization.XmlSchemas
      System.Xml.Serialization.XmlSchemaImporter
      System.CodeDom.CodeCompileUnit
      System.CodeDom.CodeNamespace
      System.Xml.Serialization.CodeGenerationOptions
      System.CodeDom.Compiler.CodeDomProvider)))
