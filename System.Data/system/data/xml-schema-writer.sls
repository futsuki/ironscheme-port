(library (system data xml-schema-writer)
  (export new
          is?
          xml-schema-writer?
          write-schema
          write-xml-schema
          constraint-prefix)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.XmlSchemaWriter a ...)))))
  (define (is? a) (clr-is System.Data.XmlSchemaWriter a))
  (define (xml-schema-writer? a) (clr-is System.Data.XmlSchemaWriter a))
  (define-method-port
    write-schema
    System.Data.XmlSchemaWriter
    WriteSchema
    (System.Void))
  (define-method-port
    write-xml-schema
    System.Data.XmlSchemaWriter
    WriteXmlSchema
    (static:
      System.Void
      System.Data.DataSet
      System.Xml.XmlWriter
      System.Data.DataTableCollection
      System.Data.DataRelationCollection)
    (static: System.Void System.Data.DataSet System.Xml.XmlWriter))
  (define-field-port
    constraint-prefix
    #f
    #f
    (property:)
    System.Data.XmlSchemaWriter
    ConstraintPrefix
    System.String))
