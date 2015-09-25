(library (system xml schema xml-schema-keyref)
  (export new is? xml-schema-keyref? refer-get refer-set! refer-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Schema.XmlSchemaKeyref a ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaKeyref a))
  (define (xml-schema-keyref? a)
    (clr-is System.Xml.Schema.XmlSchemaKeyref a))
  (define-field-port
    refer-get
    refer-set!
    refer-update!
    (property:)
    System.Xml.Schema.XmlSchemaKeyref
    Refer
    System.Xml.XmlQualifiedName))
