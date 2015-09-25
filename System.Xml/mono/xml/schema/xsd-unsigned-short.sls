(library (mono xml schema xsd-unsigned-short)
  (export new is? xsd-unsigned-short? parse-value type-code value-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Schema.XsdUnsignedShort a ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdUnsignedShort a))
  (define (xsd-unsigned-short? a)
    (clr-is Mono.Xml.Schema.XsdUnsignedShort a))
  (define-method-port
    parse-value
    Mono.Xml.Schema.XsdUnsignedShort
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
    Mono.Xml.Schema.XsdUnsignedShort
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdUnsignedShort
    ValueType
    System.Type))
