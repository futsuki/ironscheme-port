(library (system xml serialization xml-type-map-member-namespaces)
  (export new is? xml-type-map-member-namespaces?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlTypeMapMemberNamespaces
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlTypeMapMemberNamespaces a))
  (define (xml-type-map-member-namespaces? a)
    (clr-is System.Xml.Serialization.XmlTypeMapMemberNamespaces a)))
