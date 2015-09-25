(library (system xml schema xml-schema-white-space-facet)
  (export new is? xml-schema-white-space-facet?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Schema.XmlSchemaWhiteSpaceFacet
             a
             ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaWhiteSpaceFacet a))
  (define (xml-schema-white-space-facet? a)
    (clr-is System.Xml.Schema.XmlSchemaWhiteSpaceFacet a)))
