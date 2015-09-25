(library (mono xml schema xml-schema-uri)
  (export new
          is?
          xml-schema-uri?
          get-hash-code
          to-string
          equals?
          value-get
          value-set!
          value-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Schema.XmlSchemaUri a ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XmlSchemaUri a))
  (define (xml-schema-uri? a) (clr-is Mono.Xml.Schema.XmlSchemaUri a))
  (define-method-port
    get-hash-code
    Mono.Xml.Schema.XmlSchemaUri
    GetHashCode
    (System.Int32))
  (define-method-port
    to-string
    Mono.Xml.Schema.XmlSchemaUri
    ToString
    (System.String))
  (define-method-port
    equals?
    Mono.Xml.Schema.XmlSchemaUri
    Equals
    (System.Boolean System.Object))
  (define-field-port
    value-get
    value-set!
    value-update!
    ()
    Mono.Xml.Schema.XmlSchemaUri
    value
    System.String))
