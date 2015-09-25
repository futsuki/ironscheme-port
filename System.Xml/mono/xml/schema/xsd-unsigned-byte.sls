(library (mono xml schema xsd-unsigned-byte)
  (export new is? xsd-unsigned-byte? parse-value type-code value-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Schema.XsdUnsignedByte a ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdUnsignedByte a))
  (define (xsd-unsigned-byte? a)
    (clr-is Mono.Xml.Schema.XsdUnsignedByte a))
  (define-method-port
    parse-value
    Mono.Xml.Schema.XsdUnsignedByte
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
    Mono.Xml.Schema.XsdUnsignedByte
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdUnsignedByte
    ValueType
    System.Type))
