(library (system xml schema xml-schema-identity-constraint)
  (export new
          is?
          xml-schema-identity-constraint?
          name-get
          name-set!
          name-update!
          selector-get
          selector-set!
          selector-update!
          fields
          qualified-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Schema.XmlSchemaIdentityConstraint
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Schema.XmlSchemaIdentityConstraint a))
  (define (xml-schema-identity-constraint? a)
    (clr-is System.Xml.Schema.XmlSchemaIdentityConstraint a))
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.Xml.Schema.XmlSchemaIdentityConstraint
    Name
    System.String)
  (define-field-port
    selector-get
    selector-set!
    selector-update!
    (property:)
    System.Xml.Schema.XmlSchemaIdentityConstraint
    Selector
    System.Xml.Schema.XmlSchemaXPath)
  (define-field-port
    fields
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaIdentityConstraint
    Fields
    System.Xml.Schema.XmlSchemaObjectCollection)
  (define-field-port
    qualified-name
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaIdentityConstraint
    QualifiedName
    System.Xml.XmlQualifiedName))
