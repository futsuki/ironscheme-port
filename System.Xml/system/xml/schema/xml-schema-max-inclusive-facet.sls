(library (system xml schema xml-schema-max-inclusive-facet)
  (export new is? xml-schema-max-inclusive-facet?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Schema.XmlSchemaMaxInclusiveFacet
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Schema.XmlSchemaMaxInclusiveFacet a))
  (define (xml-schema-max-inclusive-facet? a)
    (clr-is System.Xml.Schema.XmlSchemaMaxInclusiveFacet a)))
