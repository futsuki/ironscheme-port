(library (system xml schema xml-schema-xpath)
  (export new is? xml-schema-xpath? xpath-get xpath-set! xpath-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Schema.XmlSchemaXPath a ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaXPath a))
  (define (xml-schema-xpath? a)
    (clr-is System.Xml.Schema.XmlSchemaXPath a))
  (define-field-port
    xpath-get
    xpath-set!
    xpath-update!
    (property:)
    System.Xml.Schema.XmlSchemaXPath
    XPath
    System.String))
