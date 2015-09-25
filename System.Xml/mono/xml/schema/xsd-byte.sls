(library (mono xml schema xsd-byte)
  (export new is? xsd-byte? parse-value type-code value-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Schema.XsdByte a ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdByte a))
  (define (xsd-byte? a) (clr-is Mono.Xml.Schema.XsdByte a))
  (define-method-port
    parse-value
    Mono.Xml.Schema.XsdByte
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
    Mono.Xml.Schema.XsdByte
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdByte
    ValueType
    System.Type))
