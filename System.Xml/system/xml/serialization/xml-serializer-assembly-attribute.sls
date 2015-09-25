(library (system xml serialization xml-serializer-assembly-attribute)
  (export new
          is?
          xml-serializer-assembly-attribute?
          assembly-name-get
          assembly-name-set!
          assembly-name-update!
          code-base-get
          code-base-set!
          code-base-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlSerializerAssemblyAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlSerializerAssemblyAttribute a))
  (define (xml-serializer-assembly-attribute? a)
    (clr-is System.Xml.Serialization.XmlSerializerAssemblyAttribute a))
  (define-field-port
    assembly-name-get
    assembly-name-set!
    assembly-name-update!
    (property:)
    System.Xml.Serialization.XmlSerializerAssemblyAttribute
    AssemblyName
    System.String)
  (define-field-port
    code-base-get
    code-base-set!
    code-base-update!
    (property:)
    System.Xml.Serialization.XmlSerializerAssemblyAttribute
    CodeBase
    System.String))
