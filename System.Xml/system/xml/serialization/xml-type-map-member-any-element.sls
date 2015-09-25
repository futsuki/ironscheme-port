(library (system xml serialization xml-type-map-member-any-element)
  (export new
          is?
          xml-type-map-member-any-element?
          is-element-defined?
          is-default-any?
          can-be-text?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlTypeMapMemberAnyElement
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlTypeMapMemberAnyElement a))
  (define (xml-type-map-member-any-element? a)
    (clr-is System.Xml.Serialization.XmlTypeMapMemberAnyElement a))
  (define-method-port
    is-element-defined?
    System.Xml.Serialization.XmlTypeMapMemberAnyElement
    IsElementDefined
    (System.Boolean System.String System.String))
  (define-field-port
    is-default-any?
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlTypeMapMemberAnyElement
    IsDefaultAny
    System.Boolean)
  (define-field-port
    can-be-text?
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlTypeMapMemberAnyElement
    CanBeText
    System.Boolean))
