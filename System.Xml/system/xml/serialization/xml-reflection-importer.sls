(library (system xml serialization xml-reflection-importer)
  (export new
          is?
          xml-reflection-importer?
          include-types
          import-type-mapping
          include-type
          import-members-mapping)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlReflectionImporter
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlReflectionImporter a))
  (define (xml-reflection-importer? a)
    (clr-is System.Xml.Serialization.XmlReflectionImporter a))
  (define-method-port
    include-types
    System.Xml.Serialization.XmlReflectionImporter
    IncludeTypes
    (System.Void System.Reflection.ICustomAttributeProvider))
  (define-method-port
    import-type-mapping
    System.Xml.Serialization.XmlReflectionImporter
    ImportTypeMapping
    (System.Xml.Serialization.XmlTypeMapping
      System.Type
      System.Xml.Serialization.XmlRootAttribute
      System.String)
    (System.Xml.Serialization.XmlTypeMapping
      System.Type
      System.Xml.Serialization.XmlRootAttribute)
    (System.Xml.Serialization.XmlTypeMapping System.Type System.String)
    (System.Xml.Serialization.XmlTypeMapping System.Type))
  (define-method-port
    include-type
    System.Xml.Serialization.XmlReflectionImporter
    IncludeType
    (System.Void System.Type))
  (define-method-port
    import-members-mapping
    System.Xml.Serialization.XmlReflectionImporter
    ImportMembersMapping
    (System.Xml.Serialization.XmlMembersMapping
      System.String
      System.String
      System.Xml.Serialization.XmlReflectionMember[]
      System.Boolean
      System.Boolean
      System.Boolean
      System.Xml.Serialization.XmlMappingAccess)
    (System.Xml.Serialization.XmlMembersMapping
      System.String
      System.String
      System.Xml.Serialization.XmlReflectionMember[]
      System.Boolean
      System.Boolean
      System.Boolean)
    (System.Xml.Serialization.XmlMembersMapping
      System.String
      System.String
      System.Xml.Serialization.XmlReflectionMember[]
      System.Boolean
      System.Boolean)
    (System.Xml.Serialization.XmlMembersMapping
      System.String
      System.String
      System.Xml.Serialization.XmlReflectionMember[]
      System.Boolean)))
