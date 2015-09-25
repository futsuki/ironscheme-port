(library (mono security asn1-convert)
  (export is?
          asn1-convert?
          to-int32
          from-int32
          to-date-time
          to-oid
          from-date-time
          from-unsigned-big-integer
          from-oid)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Security.ASN1Convert a))
  (define (asn1-convert? a) (clr-is Mono.Security.ASN1Convert a))
  (define-method-port
    to-int32
    Mono.Security.ASN1Convert
    ToInt32
    (static: System.Int32 Mono.Security.ASN1))
  (define-method-port
    from-int32
    Mono.Security.ASN1Convert
    FromInt32
    (static: Mono.Security.ASN1 System.Int32))
  (define-method-port
    to-date-time
    Mono.Security.ASN1Convert
    ToDateTime
    (static: System.DateTime Mono.Security.ASN1))
  (define-method-port
    to-oid
    Mono.Security.ASN1Convert
    ToOid
    (static: System.String Mono.Security.ASN1))
  (define-method-port
    from-date-time
    Mono.Security.ASN1Convert
    FromDateTime
    (static: Mono.Security.ASN1 System.DateTime))
  (define-method-port
    from-unsigned-big-integer
    Mono.Security.ASN1Convert
    FromUnsignedBigInteger
    (static: Mono.Security.ASN1 System.Byte[]))
  (define-method-port
    from-oid
    Mono.Security.ASN1Convert
    FromOid
    (static: Mono.Security.ASN1 System.String)))
