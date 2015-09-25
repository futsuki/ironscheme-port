(library (mono xml schema xdt-untyped-atomic)
  (export is? xdt-untyped-atomic? type-code)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.Schema.XdtUntypedAtomic a))
  (define (xdt-untyped-atomic? a)
    (clr-is Mono.Xml.Schema.XdtUntypedAtomic a))
  (define-field-port
    type-code
    #f
    #f
    (property:)
    Mono.Xml.Schema.XdtUntypedAtomic
    TypeCode
    System.Xml.Schema.XmlTypeCode))
