(library (system data sql-types sql-xml)
  (export new
          is?
          sql-xml?
          get-xsd-type
          create-reader
          is-null?
          null
          value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.SqlTypes.SqlXml a ...)))))
  (define (is? a) (clr-is System.Data.SqlTypes.SqlXml a))
  (define (sql-xml? a) (clr-is System.Data.SqlTypes.SqlXml a))
  (define-method-port
    get-xsd-type
    System.Data.SqlTypes.SqlXml
    GetXsdType
    (static:
      System.Xml.XmlQualifiedName
      System.Xml.Schema.XmlSchemaSet))
  (define-method-port
    create-reader
    System.Data.SqlTypes.SqlXml
    CreateReader
    (System.Xml.XmlReader))
  (define-field-port
    is-null?
    #f
    #f
    (property:)
    System.Data.SqlTypes.SqlXml
    IsNull
    System.Boolean)
  (define-field-port
    null
    #f
    #f
    (static: property:)
    System.Data.SqlTypes.SqlXml
    Null
    System.Data.SqlTypes.SqlXml)
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Data.SqlTypes.SqlXml
    Value
    System.String))
