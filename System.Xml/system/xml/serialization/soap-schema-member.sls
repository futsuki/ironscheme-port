(library (system xml serialization soap-schema-member)
  (export new
          is?
          soap-schema-member?
          member-name-get
          member-name-set!
          member-name-update!
          member-type-get
          member-type-set!
          member-type-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Serialization.SoapSchemaMember a ...)))))
  (define (is? a) (clr-is System.Xml.Serialization.SoapSchemaMember a))
  (define (soap-schema-member? a)
    (clr-is System.Xml.Serialization.SoapSchemaMember a))
  (define-field-port
    member-name-get
    member-name-set!
    member-name-update!
    (property:)
    System.Xml.Serialization.SoapSchemaMember
    MemberName
    System.String)
  (define-field-port
    member-type-get
    member-type-set!
    member-type-update!
    (property:)
    System.Xml.Serialization.SoapSchemaMember
    MemberType
    System.Xml.XmlQualifiedName))
