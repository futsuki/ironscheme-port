(library (system security cryptography asn-encoded-data-enumerator)
  (export is? asn-encoded-data-enumerator? reset move-next? current)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Security.Cryptography.AsnEncodedDataEnumerator a))
  (define (asn-encoded-data-enumerator? a)
    (clr-is System.Security.Cryptography.AsnEncodedDataEnumerator a))
  (define-method-port
    reset
    System.Security.Cryptography.AsnEncodedDataEnumerator
    Reset
    (System.Void))
  (define-method-port
    move-next?
    System.Security.Cryptography.AsnEncodedDataEnumerator
    MoveNext
    (System.Boolean))
  (define-field-port
    current
    #f
    #f
    (property:)
    System.Security.Cryptography.AsnEncodedDataEnumerator
    Current
    System.Security.Cryptography.AsnEncodedData))
