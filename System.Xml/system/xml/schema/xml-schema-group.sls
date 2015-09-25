(library (system xml schema xml-schema-group)
  (export new
          is?
          xml-schema-group?
          name-get
          name-set!
          name-update!
          particle-get
          particle-set!
          particle-update!
          qualified-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Schema.XmlSchemaGroup a ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaGroup a))
  (define (xml-schema-group? a)
    (clr-is System.Xml.Schema.XmlSchemaGroup a))
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.Xml.Schema.XmlSchemaGroup
    Name
    System.String)
  (define-field-port
    particle-get
    particle-set!
    particle-update!
    (property:)
    System.Xml.Schema.XmlSchemaGroup
    Particle
    System.Xml.Schema.XmlSchemaGroupBase)
  (define-field-port
    qualified-name
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaGroup
    QualifiedName
    System.Xml.XmlQualifiedName))
