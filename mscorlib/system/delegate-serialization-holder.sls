(library (system delegate-serialization-holder)
  (export is?
          delegate-serialization-holder?
          get-object-data
          get-delegate-data
          get-real-object)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.DelegateSerializationHolder a))
  (define (delegate-serialization-holder? a)
    (clr-is System.DelegateSerializationHolder a))
  (define-method-port
    get-object-data
    System.DelegateSerializationHolder
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    get-delegate-data
    System.DelegateSerializationHolder
    GetDelegateData
    (static:
      System.Void
      System.Delegate
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    get-real-object
    System.DelegateSerializationHolder
    GetRealObject
    (System.Object System.Runtime.Serialization.StreamingContext)))
