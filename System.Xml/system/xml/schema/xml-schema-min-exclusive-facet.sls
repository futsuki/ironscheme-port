(library (system xml schema xml-schema-min-exclusive-facet)
  (export new is? xml-schema-min-exclusive-facet?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Schema.XmlSchemaMinExclusiveFacet
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Schema.XmlSchemaMinExclusiveFacet a))
  (define (xml-schema-min-exclusive-facet? a)
    (clr-is System.Xml.Schema.XmlSchemaMinExclusiveFacet a)))
