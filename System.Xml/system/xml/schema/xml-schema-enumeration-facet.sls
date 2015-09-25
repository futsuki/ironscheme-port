(library (system xml schema xml-schema-enumeration-facet)
  (export new is? xml-schema-enumeration-facet?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Schema.XmlSchemaEnumerationFacet
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Schema.XmlSchemaEnumerationFacet a))
  (define (xml-schema-enumeration-facet? a)
    (clr-is System.Xml.Schema.XmlSchemaEnumerationFacet a)))
