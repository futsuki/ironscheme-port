(library (system xml serialization soap-schema-importer)
  (export new
          is?
          soap-schema-importer?
          import-derived-type-mapping
          import-members-mapping)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.SoapSchemaImporter
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.SoapSchemaImporter a))
  (define (soap-schema-importer? a)
    (clr-is System.Xml.Serialization.SoapSchemaImporter a))
  (define-method-port
    import-derived-type-mapping
    System.Xml.Serialization.SoapSchemaImporter
    ImportDerivedTypeMapping
    (System.Xml.Serialization.XmlTypeMapping
      System.Xml.XmlQualifiedName
      System.Type
      System.Boolean))
  (define-method-port
    import-members-mapping
    System.Xml.Serialization.SoapSchemaImporter
    ImportMembersMapping
    (System.Xml.Serialization.XmlMembersMapping
      System.String
      System.String
      System.Xml.Serialization.SoapSchemaMember[]
      System.Boolean
      System.Type
      System.Boolean)
    (System.Xml.Serialization.XmlMembersMapping
      System.String
      System.String
      System.Xml.Serialization.SoapSchemaMember[]
      System.Boolean)
    (System.Xml.Serialization.XmlMembersMapping
      System.String
      System.String
      System.Xml.Serialization.SoapSchemaMember[])
    (System.Xml.Serialization.XmlMembersMapping
      System.String
      System.String
      System.Xml.Serialization.SoapSchemaMember)))
