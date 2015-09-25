(library (system xml serialization xml-serializer-version-attribute)
  (export new
          is?
          xml-serializer-version-attribute?
          namespace-get
          namespace-set!
          namespace-update!
          parent-assembly-id-get
          parent-assembly-id-set!
          parent-assembly-id-update!
          type-get
          type-set!
          type-update!
          version-get
          version-set!
          version-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlSerializerVersionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlSerializerVersionAttribute a))
  (define (xml-serializer-version-attribute? a)
    (clr-is System.Xml.Serialization.XmlSerializerVersionAttribute a))
  (define-field-port
    namespace-get
    namespace-set!
    namespace-update!
    (property:)
    System.Xml.Serialization.XmlSerializerVersionAttribute
    Namespace
    System.String)
  (define-field-port
    parent-assembly-id-get
    parent-assembly-id-set!
    parent-assembly-id-update!
    (property:)
    System.Xml.Serialization.XmlSerializerVersionAttribute
    ParentAssemblyId
    System.String)
  (define-field-port
    type-get
    type-set!
    type-update!
    (property:)
    System.Xml.Serialization.XmlSerializerVersionAttribute
    Type
    System.Type)
  (define-field-port
    version-get
    version-set!
    version-update!
    (property:)
    System.Xml.Serialization.XmlSerializerVersionAttribute
    Version
    System.String))
