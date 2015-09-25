(library (mono xml schema xsd-non-positive-integer)
  (export new
          is?
          xsd-non-positive-integer?
          parse-value
          type-code
          value-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Schema.XsdNonPositiveInteger a ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdNonPositiveInteger a))
  (define (xsd-non-positive-integer? a)
    (clr-is Mono.Xml.Schema.XsdNonPositiveInteger a))
  (define-method-port
    parse-value
    Mono.Xml.Schema.XsdNonPositiveInteger
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
    Mono.Xml.Schema.XsdNonPositiveInteger
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdNonPositiveInteger
    ValueType
    System.Type))
