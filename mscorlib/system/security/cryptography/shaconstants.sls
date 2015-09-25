(library (system security cryptography shaconstants)
  (export is? shaconstants? k1 k2)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Security.Cryptography.SHAConstants a))
  (define (shaconstants? a)
    (clr-is System.Security.Cryptography.SHAConstants a))
  (define-field-port
    k1
    #f
    #f
    (static:)
    System.Security.Cryptography.SHAConstants
    K1
    System.UInt32[])
  (define-field-port
    k2
    #f
    #f
    (static:)
    System.Security.Cryptography.SHAConstants
    K2
    System.UInt64[]))
