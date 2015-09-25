(library (system xml schema xml-schema-set)
  (export new
          is?
          xml-schema-set?
          reprocess
          schemas
          add
          contains?
          remove
          compile
          copy-to
          remove-recursive?
          count
          global-attributes
          global-elements
          global-types
          is-compiled?
          name-table
          compilation-settings-get
          compilation-settings-set!
          compilation-settings-update!
          xml-resolver)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.Schema.XmlSchemaSet a ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaSet a))
  (define (xml-schema-set? a) (clr-is System.Xml.Schema.XmlSchemaSet a))
  (define-method-port
    reprocess
    System.Xml.Schema.XmlSchemaSet
    Reprocess
    (System.Xml.Schema.XmlSchema System.Xml.Schema.XmlSchema))
  (define-method-port
    schemas
    System.Xml.Schema.XmlSchemaSet
    Schemas
    (System.Collections.ICollection System.String)
    (System.Collections.ICollection))
  (define-method-port
    add
    System.Xml.Schema.XmlSchemaSet
    Add
    (System.Xml.Schema.XmlSchema System.Xml.Schema.XmlSchema)
    (System.Void System.Xml.Schema.XmlSchemaSet)
    (System.Xml.Schema.XmlSchema System.String System.Xml.XmlReader)
    (System.Xml.Schema.XmlSchema System.String System.String))
  (define-method-port
    contains?
    System.Xml.Schema.XmlSchemaSet
    Contains
    (System.Boolean System.Xml.Schema.XmlSchema)
    (System.Boolean System.String))
  (define-method-port
    remove
    System.Xml.Schema.XmlSchemaSet
    Remove
    (System.Xml.Schema.XmlSchema System.Xml.Schema.XmlSchema))
  (define-method-port
    compile
    System.Xml.Schema.XmlSchemaSet
    Compile
    (System.Void))
  (define-method-port
    copy-to
    System.Xml.Schema.XmlSchemaSet
    CopyTo
    (System.Void System.Xml.Schema.XmlSchema[] System.Int32))
  (define-method-port
    remove-recursive?
    System.Xml.Schema.XmlSchemaSet
    RemoveRecursive
    (System.Boolean System.Xml.Schema.XmlSchema))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaSet
    Count
    System.Int32)
  (define-field-port
    global-attributes
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaSet
    GlobalAttributes
    System.Xml.Schema.XmlSchemaObjectTable)
  (define-field-port
    global-elements
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaSet
    GlobalElements
    System.Xml.Schema.XmlSchemaObjectTable)
  (define-field-port
    global-types
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaSet
    GlobalTypes
    System.Xml.Schema.XmlSchemaObjectTable)
  (define-field-port
    is-compiled?
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaSet
    IsCompiled
    System.Boolean)
  (define-field-port
    name-table
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaSet
    NameTable
    System.Xml.XmlNameTable)
  (define-field-port
    compilation-settings-get
    compilation-settings-set!
    compilation-settings-update!
    (property:)
    System.Xml.Schema.XmlSchemaSet
    CompilationSettings
    System.Xml.Schema.XmlSchemaCompilationSettings)
  (define-field-port
    #f
    xml-resolver
    #f
    (property:)
    System.Xml.Schema.XmlSchemaSet
    XmlResolver
    System.Xml.XmlResolver))
