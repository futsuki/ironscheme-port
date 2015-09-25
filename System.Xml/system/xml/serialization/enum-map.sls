(library (system xml serialization enum-map)
  (export new
          is?
          enum-map?
          get-xml-name
          get-enum-name
          is-flags?
          members
          enum-names
          xml-names
          values)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Serialization.EnumMap a ...)))))
  (define (is? a) (clr-is System.Xml.Serialization.EnumMap a))
  (define (enum-map? a) (clr-is System.Xml.Serialization.EnumMap a))
  (define-method-port
    get-xml-name
    System.Xml.Serialization.EnumMap
    GetXmlName
    (System.String System.String System.Object))
  (define-method-port
    get-enum-name
    System.Xml.Serialization.EnumMap
    GetEnumName
    (System.String System.String System.String))
  (define-field-port
    is-flags?
    #f
    #f
    (property:)
    System.Xml.Serialization.EnumMap
    IsFlags
    System.Boolean)
  (define-field-port
    members
    #f
    #f
    (property:)
    System.Xml.Serialization.EnumMap
    Members
    System.Xml.Serialization.EnumMap+EnumMapMember[])
  (define-field-port
    enum-names
    #f
    #f
    (property:)
    System.Xml.Serialization.EnumMap
    EnumNames
    System.String[])
  (define-field-port
    xml-names
    #f
    #f
    (property:)
    System.Xml.Serialization.EnumMap
    XmlNames
    System.String[])
  (define-field-port
    values
    #f
    #f
    (property:)
    System.Xml.Serialization.EnumMap
    Values
    System.Int64[]))
