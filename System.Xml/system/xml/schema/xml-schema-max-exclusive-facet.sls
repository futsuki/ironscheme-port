(library (system xml schema xml-schema-max-exclusive-facet)
  (export new is? xml-schema-max-exclusive-facet?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Schema.XmlSchemaMaxExclusiveFacet
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Schema.XmlSchemaMaxExclusiveFacet a))
  (define (xml-schema-max-exclusive-facet? a)
    (clr-is System.Xml.Schema.XmlSchemaMaxExclusiveFacet a)))
