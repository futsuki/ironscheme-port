(library (system security cryptography base64-constants)
  (export is? base64-constants? encode-table decode-table)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Security.Cryptography.Base64Constants a))
  (define (base64-constants? a)
    (clr-is System.Security.Cryptography.Base64Constants a))
  (define-field-port
    encode-table
    #f
    #f
    (static:)
    System.Security.Cryptography.Base64Constants
    EncodeTable
    System.Byte[])
  (define-field-port
    decode-table
    #f
    #f
    (static:)
    System.Security.Cryptography.Base64Constants
    DecodeTable
    System.Byte[]))
