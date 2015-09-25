(library (system xml schema xml-schema-fraction-digits-facet)
  (export new is? xml-schema-fraction-digits-facet?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Schema.XmlSchemaFractionDigitsFacet
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Schema.XmlSchemaFractionDigitsFacet a))
  (define (xml-schema-fraction-digits-facet? a)
    (clr-is System.Xml.Schema.XmlSchemaFractionDigitsFacet a)))
