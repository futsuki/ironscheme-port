(library (system xml serialization xml-any-attribute-attribute)
  (export new is? xml-any-attribute-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlAnyAttributeAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlAnyAttributeAttribute a))
  (define (xml-any-attribute-attribute? a)
    (clr-is System.Xml.Serialization.XmlAnyAttributeAttribute a)))
