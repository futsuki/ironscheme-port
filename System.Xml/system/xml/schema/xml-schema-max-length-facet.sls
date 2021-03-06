(library (system xml schema xml-schema-max-length-facet)
  (export new is? xml-schema-max-length-facet?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Schema.XmlSchemaMaxLengthFacet a ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaMaxLengthFacet a))
  (define (xml-schema-max-length-facet? a)
    (clr-is System.Xml.Schema.XmlSchemaMaxLengthFacet a)))
