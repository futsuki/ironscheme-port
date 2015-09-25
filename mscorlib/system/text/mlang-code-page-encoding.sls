(library (system text mlang-code-page-encoding)
  (export is? mlang-code-page-encoding? get-object-data get-real-object)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Text.MLangCodePageEncoding a))
  (define (mlang-code-page-encoding? a)
    (clr-is System.Text.MLangCodePageEncoding a))
  (define-method-port
    get-object-data
    System.Text.MLangCodePageEncoding
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    get-real-object
    System.Text.MLangCodePageEncoding
    GetRealObject
    (System.Object System.Runtime.Serialization.StreamingContext)))
