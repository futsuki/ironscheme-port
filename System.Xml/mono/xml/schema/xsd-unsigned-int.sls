(library (mono xml schema xsd-unsigned-int)
  (export new is? xsd-unsigned-int? parse-value type-code value-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Schema.XsdUnsignedInt a ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdUnsignedInt a))
  (define (xsd-unsigned-int? a)
    (clr-is Mono.Xml.Schema.XsdUnsignedInt a))
  (define-method-port
    parse-value
    Mono.Xml.Schema.XsdUnsignedInt
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
    Mono.Xml.Schema.XsdUnsignedInt
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdUnsignedInt
    ValueType
    System.Type))
