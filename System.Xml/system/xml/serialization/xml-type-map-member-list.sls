(library (system xml serialization xml-type-map-member-list)
  (export new
          is?
          xml-type-map-member-list?
          list-type-mapping
          element-name
          namespace)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlTypeMapMemberList
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlTypeMapMemberList a))
  (define (xml-type-map-member-list? a)
    (clr-is System.Xml.Serialization.XmlTypeMapMemberList a))
  (define-field-port
    list-type-mapping
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlTypeMapMemberList
    ListTypeMapping
    System.Xml.Serialization.XmlTypeMapping)
  (define-field-port
    element-name
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlTypeMapMemberList
    ElementName
    System.String)
  (define-field-port
    namespace
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlTypeMapMemberList
    Namespace
    System.String))
