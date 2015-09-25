(library (system xml schema xml-schema-serialization-writer)
  (export new
          is?
          xml-schema-serialization-writer?
          write-root-xml-schema)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Schema.XmlSchemaSerializationWriter
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Schema.XmlSchemaSerializationWriter a))
  (define (xml-schema-serialization-writer? a)
    (clr-is System.Xml.Schema.XmlSchemaSerializationWriter a))
  (define-method-port
    write-root-xml-schema
    System.Xml.Schema.XmlSchemaSerializationWriter
    WriteRoot_XmlSchema
    (System.Void System.Object)))
