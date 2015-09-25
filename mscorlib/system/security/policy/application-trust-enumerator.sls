(library (system security policy application-trust-enumerator)
  (export is? application-trust-enumerator? reset move-next? current)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Security.Policy.ApplicationTrustEnumerator a))
  (define (application-trust-enumerator? a)
    (clr-is System.Security.Policy.ApplicationTrustEnumerator a))
  (define-method-port
    reset
    System.Security.Policy.ApplicationTrustEnumerator
    Reset
    (System.Void))
  (define-method-port
    move-next?
    System.Security.Policy.ApplicationTrustEnumerator
    MoveNext
    (System.Boolean))
  (define-field-port
    current
    #f
    #f
    (property:)
    System.Security.Policy.ApplicationTrustEnumerator
    Current
    System.Security.Policy.ApplicationTrust))
