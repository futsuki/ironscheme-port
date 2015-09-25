(library (system multicast-delegate)
  (export is?
          multicast-delegate?
          get-hash-code
          get-invocation-list
          get-object-data
          equals?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.MulticastDelegate a))
  (define (multicast-delegate? a) (clr-is System.MulticastDelegate a))
  (define-method-port
    get-hash-code
    System.MulticastDelegate
    GetHashCode
    (System.Int32))
  (define-method-port
    get-invocation-list
    System.MulticastDelegate
    GetInvocationList
    (System.Delegate[]))
  (define-method-port
    get-object-data
    System.MulticastDelegate
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    equals?
    System.MulticastDelegate
    Equals
    (System.Boolean System.Object)))
