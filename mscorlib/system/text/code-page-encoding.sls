(library (system text code-page-encoding)
  (export is? code-page-encoding? get-object-data get-real-object)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Text.CodePageEncoding a))
  (define (code-page-encoding? a)
    (clr-is System.Text.CodePageEncoding a))
  (define-method-port
    get-object-data
    System.Text.CodePageEncoding
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    get-real-object
    System.Text.CodePageEncoding
    GetRealObject
    (System.Object System.Runtime.Serialization.StreamingContext)))
