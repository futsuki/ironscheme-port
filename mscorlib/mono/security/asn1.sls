(library (mono security asn1)
  (export new
          is?
          asn1?
          to-string
          get-bytes
          save-to-file
          add
          compare-value?
          equals?
          element
          count
          tag
          length
          value-get
          value-set!
          value-update!
          item)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Security.ASN1 a ...)))))
  (define (is? a) (clr-is Mono.Security.ASN1 a))
  (define (asn1? a) (clr-is Mono.Security.ASN1 a))
  (define-method-port
    to-string
    Mono.Security.ASN1
    ToString
    (System.String))
  (define-method-port
    get-bytes
    Mono.Security.ASN1
    GetBytes
    (System.Byte[]))
  (define-method-port
    save-to-file
    Mono.Security.ASN1
    SaveToFile
    (System.Void System.String))
  (define-method-port
    add
    Mono.Security.ASN1
    Add
    (Mono.Security.ASN1 Mono.Security.ASN1))
  (define-method-port
    compare-value?
    Mono.Security.ASN1
    CompareValue
    (System.Boolean System.Byte[]))
  (define-method-port
    equals?
    Mono.Security.ASN1
    Equals
    (System.Boolean System.Byte[]))
  (define-method-port
    element
    Mono.Security.ASN1
    Element
    (Mono.Security.ASN1 System.Int32 System.Byte))
  (define-field-port
    count
    #f
    #f
    (property:)
    Mono.Security.ASN1
    Count
    System.Int32)
  (define-field-port
    tag
    #f
    #f
    (property:)
    Mono.Security.ASN1
    Tag
    System.Byte)
  (define-field-port
    length
    #f
    #f
    (property:)
    Mono.Security.ASN1
    Length
    System.Int32)
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    Mono.Security.ASN1
    Value
    System.Byte[])
  (define-field-port
    item
    #f
    #f
    (property:)
    Mono.Security.ASN1
    Item
    Mono.Security.ASN1))
