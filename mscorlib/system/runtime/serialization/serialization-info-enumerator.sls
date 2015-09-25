(library (system runtime serialization serialization-info-enumerator)
  (export is?
          serialization-info-enumerator?
          reset
          move-next?
          current
          name
          object-type
          value)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Runtime.Serialization.SerializationInfoEnumerator a))
  (define (serialization-info-enumerator? a)
    (clr-is System.Runtime.Serialization.SerializationInfoEnumerator a))
  (define-method-port
    reset
    System.Runtime.Serialization.SerializationInfoEnumerator
    Reset
    (System.Void))
  (define-method-port
    move-next?
    System.Runtime.Serialization.SerializationInfoEnumerator
    MoveNext
    (System.Boolean))
  (define-field-port
    current
    #f
    #f
    (property:)
    System.Runtime.Serialization.SerializationInfoEnumerator
    Current
    System.Runtime.Serialization.SerializationEntry)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Runtime.Serialization.SerializationInfoEnumerator
    Name
    System.String)
  (define-field-port
    object-type
    #f
    #f
    (property:)
    System.Runtime.Serialization.SerializationInfoEnumerator
    ObjectType
    System.Type)
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Runtime.Serialization.SerializationInfoEnumerator
    Value
    System.Object))
