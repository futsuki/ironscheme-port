(library (mono xml schema xsd-any-uri)
  (export new
          is?
          xsd-any-uri?
          parse-value
          tokenized-type
          type-code
          value-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Schema.XsdAnyURI a ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdAnyURI a))
  (define (xsd-any-uri? a) (clr-is Mono.Xml.Schema.XsdAnyURI a))
  (define-method-port
    parse-value
    Mono.Xml.Schema.XsdAnyURI
    ParseValue
    (System.Object
      System.String
      System.Xml.XmlNameTable
      System.Xml.IXmlNamespaceResolver))
  (define-field-port
    tokenized-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdAnyURI
    TokenizedType
    System.Xml.XmlTokenizedType)
  (define-field-port
    type-code
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdAnyURI
    TypeCode
    System.Xml.Schema.XmlTypeCode)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    Mono.Xml.Schema.XsdAnyURI
    ValueType
    System.Type))
