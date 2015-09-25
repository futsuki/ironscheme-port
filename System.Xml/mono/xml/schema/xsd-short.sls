(library (mono xml schema xsd-short)
  (export new is? xsd-short? parse-value type-code value-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Schema.XsdShort a ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdShort a))
  (define (xsd-short? a) (clr-is Mono.Xml.Schema.XsdShort a))
  (define-method-port
    parse-value
    Mono.Xml.Schema.XsdShort
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
    Mono.Xml.Schema.XsdShort
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdShort
    ValueType
    System.Type))
