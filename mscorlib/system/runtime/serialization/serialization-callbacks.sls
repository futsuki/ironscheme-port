(library (system runtime serialization serialization-callbacks)
  (export new
          is?
          serialization-callbacks?
          raise-on-serialized
          raise-on-deserialized
          get-serialization-callbacks
          raise-on-deserializing
          raise-on-serializing
          has-serializing-callbacks?
          has-serialized-callbacks?
          has-deserializing-callbacks?
          has-deserialized-callbacks?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Serialization.SerializationCallbacks
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Serialization.SerializationCallbacks a))
  (define (serialization-callbacks? a)
    (clr-is System.Runtime.Serialization.SerializationCallbacks a))
  (define-method-port
    raise-on-serialized
    System.Runtime.Serialization.SerializationCallbacks
    RaiseOnSerialized
    (System.Void
      System.Object
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    raise-on-deserialized
    System.Runtime.Serialization.SerializationCallbacks
    RaiseOnDeserialized
    (System.Void
      System.Object
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    get-serialization-callbacks
    System.Runtime.Serialization.SerializationCallbacks
    GetSerializationCallbacks
    (static:
      System.Runtime.Serialization.SerializationCallbacks
      System.Type))
  (define-method-port
    raise-on-deserializing
    System.Runtime.Serialization.SerializationCallbacks
    RaiseOnDeserializing
    (System.Void
      System.Object
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    raise-on-serializing
    System.Runtime.Serialization.SerializationCallbacks
    RaiseOnSerializing
    (System.Void
      System.Object
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    has-serializing-callbacks?
    #f
    #f
    (property:)
    System.Runtime.Serialization.SerializationCallbacks
    HasSerializingCallbacks
    System.Boolean)
  (define-field-port
    has-serialized-callbacks?
    #f
    #f
    (property:)
    System.Runtime.Serialization.SerializationCallbacks
    HasSerializedCallbacks
    System.Boolean)
  (define-field-port
    has-deserializing-callbacks?
    #f
    #f
    (property:)
    System.Runtime.Serialization.SerializationCallbacks
    HasDeserializingCallbacks
    System.Boolean)
  (define-field-port
    has-deserialized-callbacks?
    #f
    #f
    (property:)
    System.Runtime.Serialization.SerializationCallbacks
    HasDeserializedCallbacks
    System.Boolean))
