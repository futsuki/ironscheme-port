(library (mono xml schema xsd-int)
  (export new is? xsd-int? parse-value type-code value-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Schema.XsdInt a ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdInt a))
  (define (xsd-int? a) (clr-is Mono.Xml.Schema.XsdInt a))
  (define-method-port
    parse-value
    Mono.Xml.Schema.XsdInt
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
    Mono.Xml.Schema.XsdInt
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdInt
    ValueType
    System.Type))
