(library (mono xml schema xsd-base64-binary)
  (export is? xsd-base64-binary? parse-value type-code value-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdBase64Binary a))
  (define (xsd-base64-binary? a)
    (clr-is Mono.Xml.Schema.XsdBase64Binary a))
  (define-method-port
    parse-value
    Mono.Xml.Schema.XsdBase64Binary
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
    Mono.Xml.Schema.XsdBase64Binary
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdBase64Binary
    ValueType
    System.Type))
