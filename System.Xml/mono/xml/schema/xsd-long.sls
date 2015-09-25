(library (mono xml schema xsd-long)
  (export new is? xsd-long? parse-value type-code value-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Schema.XsdLong a ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdLong a))
  (define (xsd-long? a) (clr-is Mono.Xml.Schema.XsdLong a))
  (define-method-port
    parse-value
    Mono.Xml.Schema.XsdLong
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
    Mono.Xml.Schema.XsdLong
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdLong
    ValueType
    System.Type))
