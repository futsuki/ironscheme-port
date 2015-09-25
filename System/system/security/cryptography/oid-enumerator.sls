(library (system security cryptography oid-enumerator)
  (export is? oid-enumerator? reset move-next? current)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Security.Cryptography.OidEnumerator a))
  (define (oid-enumerator? a)
    (clr-is System.Security.Cryptography.OidEnumerator a))
  (define-method-port
    reset
    System.Security.Cryptography.OidEnumerator
    Reset
    (System.Void))
  (define-method-port
    move-next?
    System.Security.Cryptography.OidEnumerator
    MoveNext
    (System.Boolean))
  (define-field-port
    current
    #f
    #f
    (property:)
    System.Security.Cryptography.OidEnumerator
    Current
    System.Security.Cryptography.Oid))
