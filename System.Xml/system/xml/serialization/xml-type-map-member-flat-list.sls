(library (system xml serialization xml-type-map-member-flat-list)
  (export new
          is?
          xml-type-map-member-flat-list?
          list-map-get
          list-map-set!
          list-map-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlTypeMapMemberFlatList
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlTypeMapMemberFlatList a))
  (define (xml-type-map-member-flat-list? a)
    (clr-is System.Xml.Serialization.XmlTypeMapMemberFlatList a))
  (define-field-port
    list-map-get
    list-map-set!
    list-map-update!
    (property:)
    System.Xml.Serialization.XmlTypeMapMemberFlatList
    ListMap
    System.Xml.Serialization.ListMap))
