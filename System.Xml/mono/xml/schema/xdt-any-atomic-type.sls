(library (mono xml schema xdt-any-atomic-type)
  (export is? xdt-any-atomic-type? type-code)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.Schema.XdtAnyAtomicType a))
  (define (xdt-any-atomic-type? a)
    (clr-is Mono.Xml.Schema.XdtAnyAtomicType a))
  (define-field-port
    type-code
    #f
    #f
    (property:)
    Mono.Xml.Schema.XdtAnyAtomicType
    TypeCode
    System.Xml.Schema.XmlTypeCode))
