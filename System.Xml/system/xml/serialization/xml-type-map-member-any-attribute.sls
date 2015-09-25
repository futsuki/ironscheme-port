(library (system xml serialization xml-type-map-member-any-attribute)
  (export new is? xml-type-map-member-any-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlTypeMapMemberAnyAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlTypeMapMemberAnyAttribute a))
  (define (xml-type-map-member-any-attribute? a)
    (clr-is System.Xml.Serialization.XmlTypeMapMemberAnyAttribute a)))
