(library (mono xml schema xsd-unsigned-long)
  (export new is? xsd-unsigned-long? parse-value type-code value-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Schema.XsdUnsignedLong a ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdUnsignedLong a))
  (define (xsd-unsigned-long? a)
    (clr-is Mono.Xml.Schema.XsdUnsignedLong a))
  (define-method-port
    parse-value
    Mono.Xml.Schema.XsdUnsignedLong
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
    Mono.Xml.Schema.XsdUnsignedLong
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdUnsignedLong
    ValueType
    System.Type))
