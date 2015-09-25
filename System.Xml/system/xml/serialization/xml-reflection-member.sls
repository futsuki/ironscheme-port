(library (system xml serialization xml-reflection-member)
  (export new
          is?
          xml-reflection-member?
          is-return-value?-get
          is-return-value?-set!
          is-return-value?-update!
          member-name-get
          member-name-set!
          member-name-update!
          member-type-get
          member-type-set!
          member-type-update!
          override-is-nullable?-get
          override-is-nullable?-set!
          override-is-nullable?-update!
          soap-attributes-get
          soap-attributes-set!
          soap-attributes-update!
          xml-attributes-get
          xml-attributes-set!
          xml-attributes-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlReflectionMember
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlReflectionMember a))
  (define (xml-reflection-member? a)
    (clr-is System.Xml.Serialization.XmlReflectionMember a))
  (define-field-port
    is-return-value?-get
    is-return-value?-set!
    is-return-value?-update!
    (property:)
    System.Xml.Serialization.XmlReflectionMember
    IsReturnValue
    System.Boolean)
  (define-field-port
    member-name-get
    member-name-set!
    member-name-update!
    (property:)
    System.Xml.Serialization.XmlReflectionMember
    MemberName
    System.String)
  (define-field-port
    member-type-get
    member-type-set!
    member-type-update!
    (property:)
    System.Xml.Serialization.XmlReflectionMember
    MemberType
    System.Type)
  (define-field-port
    override-is-nullable?-get
    override-is-nullable?-set!
    override-is-nullable?-update!
    (property:)
    System.Xml.Serialization.XmlReflectionMember
    OverrideIsNullable
    System.Boolean)
  (define-field-port
    soap-attributes-get
    soap-attributes-set!
    soap-attributes-update!
    (property:)
    System.Xml.Serialization.XmlReflectionMember
    SoapAttributes
    System.Xml.Serialization.SoapAttributes)
  (define-field-port
    xml-attributes-get
    xml-attributes-set!
    xml-attributes-update!
    (property:)
    System.Xml.Serialization.XmlReflectionMember
    XmlAttributes
    System.Xml.Serialization.XmlAttributes))
