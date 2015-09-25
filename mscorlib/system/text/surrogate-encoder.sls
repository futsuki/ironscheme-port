(library (system text surrogate-encoder)
  (export is? surrogate-encoder? get-object-data get-real-object)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Text.SurrogateEncoder a))
  (define (surrogate-encoder? a)
    (clr-is System.Text.SurrogateEncoder a))
  (define-method-port
    get-object-data
    System.Text.SurrogateEncoder
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    get-real-object
    System.Text.SurrogateEncoder
    GetRealObject
    (System.Object System.Runtime.Serialization.StreamingContext)))
