(library (system xml serialization import-context)
  (export new
          is?
          import-context?
          share-types?
          type-identifiers
          warnings)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Serialization.ImportContext a ...)))))
  (define (is? a) (clr-is System.Xml.Serialization.ImportContext a))
  (define (import-context? a)
    (clr-is System.Xml.Serialization.ImportContext a))
  (define-field-port
    share-types?
    #f
    #f
    (property:)
    System.Xml.Serialization.ImportContext
    ShareTypes
    System.Boolean)
  (define-field-port
    type-identifiers
    #f
    #f
    (property:)
    System.Xml.Serialization.ImportContext
    TypeIdentifiers
    System.Xml.Serialization.CodeIdentifiers)
  (define-field-port
    warnings
    #f
    #f
    (property:)
    System.Xml.Serialization.ImportContext
    Warnings
    System.Collections.Specialized.StringCollection))
