(library (mono xml schema xsd-non-negative-integer)
  (export new
          is?
          xsd-non-negative-integer?
          parse-value
          type-code
          value-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Schema.XsdNonNegativeInteger a ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdNonNegativeInteger a))
  (define (xsd-non-negative-integer? a)
    (clr-is Mono.Xml.Schema.XsdNonNegativeInteger a))
  (define-method-port
    parse-value
    Mono.Xml.Schema.XsdNonNegativeInteger
    ParseValue
    (System.Object
      System.String
      System.Xml.XmlNameTable
      System.Xml.IXmlNamespaceResolver))
  (define-field-port
    type-code
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdNonNegativeInteger
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdNonNegativeInteger
    ValueType
    System.Type))
