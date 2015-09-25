(library (system xml schema xml-schema-min-inclusive-facet)
  (export new is? xml-schema-min-inclusive-facet?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Schema.XmlSchemaMinInclusiveFacet
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Schema.XmlSchemaMinInclusiveFacet a))
  (define (xml-schema-min-inclusive-facet? a)
    (clr-is System.Xml.Schema.XmlSchemaMinInclusiveFacet a)))
