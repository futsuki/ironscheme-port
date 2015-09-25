(library (system xml serialization xml-type-map-element-info-list)
  (export new is? xml-type-map-element-info-list? index-of-element)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlTypeMapElementInfoList
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlTypeMapElementInfoList a))
  (define (xml-type-map-element-info-list? a)
    (clr-is System.Xml.Serialization.XmlTypeMapElementInfoList a))
  (define-method-port
    index-of-element
    System.Xml.Serialization.XmlTypeMapElementInfoList
    IndexOfElement
    (System.Int32 System.String System.String)))
