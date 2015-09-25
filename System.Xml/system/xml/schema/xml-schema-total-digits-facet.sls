(library (system xml schema xml-schema-total-digits-facet)
  (export new is? xml-schema-total-digits-facet?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Schema.XmlSchemaTotalDigitsFacet
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Schema.XmlSchemaTotalDigitsFacet a))
  (define (xml-schema-total-digits-facet? a)
    (clr-is System.Xml.Schema.XmlSchemaTotalDigitsFacet a)))
