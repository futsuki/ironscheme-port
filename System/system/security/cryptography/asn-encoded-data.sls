(library (system security cryptography asn-encoded-data)
  (export new
          is?
          asn-encoded-data?
          format
          copy-from
          oid-get
          oid-set!
          oid-update!
          raw-data-get
          raw-data-set!
          raw-data-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.AsnEncodedData
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Cryptography.AsnEncodedData a))
  (define (asn-encoded-data? a)
    (clr-is System.Security.Cryptography.AsnEncodedData a))
  (define-method-port
    format
    System.Security.Cryptography.AsnEncodedData
    Format
    (System.String System.Boolean))
  (define-method-port
    copy-from
    System.Security.Cryptography.AsnEncodedData
    CopyFrom
    (System.Void System.Security.Cryptography.AsnEncodedData))
  (define-field-port
    oid-get
    oid-set!
    oid-update!
    (property:)
    System.Security.Cryptography.AsnEncodedData
    Oid
    System.Security.Cryptography.Oid)
  (define-field-port
    raw-data-get
    raw-data-set!
    raw-data-update!
    (property:)
    System.Security.Cryptography.AsnEncodedData
    RawData
    System.Byte[]))
