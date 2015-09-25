(library (system xml serialization xml-schema-importer)
  (export new
          is?
          xml-schema-importer?
          import-any-type
          import-schema-type
          import-type-mapping
          import-derived-type-mapping
          import-members-mapping)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlSchemaImporter
             a
             ...)))))
  (define (is? a) (clr-is System.Xml.Serialization.XmlSchemaImporter a))
  (define (xml-schema-importer? a)
    (clr-is System.Xml.Serialization.XmlSchemaImporter a))
  (define-method-port
    import-any-type
    System.Xml.Serialization.XmlSchemaImporter
    ImportAnyType
    (System.Xml.Serialization.XmlMembersMapping
      System.Xml.XmlQualifiedName
      System.String))
  (define-method-port
    import-schema-type
    System.Xml.Serialization.XmlSchemaImporter
    ImportSchemaType
    (System.Xml.Serialization.XmlTypeMapping
      System.Xml.XmlQualifiedName
      System.Type
      System.Boolean)
    (System.Xml.Serialization.XmlTypeMapping
      System.Xml.XmlQualifiedName
      System.Type)
    (System.Xml.Serialization.XmlTypeMapping
      System.Xml.XmlQualifiedName))
  (define-method-port
    import-type-mapping
    System.Xml.Serialization.XmlSchemaImporter
    ImportTypeMapping
    (System.Xml.Serialization.XmlTypeMapping
      System.Xml.XmlQualifiedName))
  (define-method-port
    import-derived-type-mapping
    System.Xml.Serialization.XmlSchemaImporter
    ImportDerivedTypeMapping
    (System.Xml.Serialization.XmlTypeMapping
      System.Xml.XmlQualifiedName
      System.Type
      System.Boolean)
    (System.Xml.Serialization.XmlTypeMapping
      System.Xml.XmlQualifiedName
      System.Type))
  (define-method-port
    import-members-mapping
    System.Xml.Serialization.XmlSchemaImporter
    ImportMembersMapping
    (System.Xml.Serialization.XmlMembersMapping
      System.Xml.XmlQualifiedName[]
      System.Type
      System.Boolean)
    (System.Xml.Serialization.XmlMembersMapping
      System.String
      System.String
      System.Xml.Serialization.SoapSchemaMember[])
    (System.Xml.Serialization.XmlMembersMapping
      System.Xml.XmlQualifiedName[])
    (System.Xml.Serialization.XmlMembersMapping
      System.Xml.XmlQualifiedName)))
