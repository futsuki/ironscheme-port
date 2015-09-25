(library (mono xml schema xsd-integer)
  (export new is? xsd-integer? parse-value type-code value-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Schema.XsdInteger a ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdInteger a))
  (define (xsd-integer? a) (clr-is Mono.Xml.Schema.XsdInteger a))
  (define-method-port
    parse-value
    Mono.Xml.Schema.XsdInteger
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
    Mono.Xml.Schema.XsdInteger
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdInteger
    ValueType
    System.Type))
