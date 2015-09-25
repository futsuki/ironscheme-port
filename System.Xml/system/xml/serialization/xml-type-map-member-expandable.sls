(library (system xml serialization xml-type-map-member-expandable)
  (export new
          is?
          xml-type-map-member-expandable?
          flat-array-index-get
          flat-array-index-set!
          flat-array-index-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlTypeMapMemberExpandable
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlTypeMapMemberExpandable a))
  (define (xml-type-map-member-expandable? a)
    (clr-is System.Xml.Serialization.XmlTypeMapMemberExpandable a))
  (define-field-port
    flat-array-index-get
    flat-array-index-set!
    flat-array-index-update!
    (property:)
    System.Xml.Serialization.XmlTypeMapMemberExpandable
    FlatArrayIndex
    System.Int32))
