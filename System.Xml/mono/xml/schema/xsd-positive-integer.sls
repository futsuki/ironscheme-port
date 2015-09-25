(library (mono xml schema xsd-positive-integer)
  (export new
          is?
          xsd-positive-integer?
          parse-value
          type-code
          value-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Schema.XsdPositiveInteger a ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdPositiveInteger a))
  (define (xsd-positive-integer? a)
    (clr-is Mono.Xml.Schema.XsdPositiveInteger a))
  (define-method-port
    parse-value
    Mono.Xml.Schema.XsdPositiveInteger
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
    Mono.Xml.Schema.XsdPositiveInteger
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdPositiveInteger
    ValueType
    System.Type))
