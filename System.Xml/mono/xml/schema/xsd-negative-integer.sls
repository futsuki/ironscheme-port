(library (mono xml schema xsd-negative-integer)
  (export new
          is?
          xsd-negative-integer?
          parse-value
          type-code
          value-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Schema.XsdNegativeInteger a ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdNegativeInteger a))
  (define (xsd-negative-integer? a)
    (clr-is Mono.Xml.Schema.XsdNegativeInteger a))
  (define-method-port
    parse-value
    Mono.Xml.Schema.XsdNegativeInteger
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
    Mono.Xml.Schema.XsdNegativeInteger
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdNegativeInteger
    ValueType
    System.Type))
