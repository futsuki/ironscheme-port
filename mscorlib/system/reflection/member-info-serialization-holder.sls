(library (system reflection member-info-serialization-holder)
  (export is?
          member-info-serialization-holder?
          get-object-data
          serialize
          get-real-object)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Reflection.MemberInfoSerializationHolder a))
  (define (member-info-serialization-holder? a)
    (clr-is System.Reflection.MemberInfoSerializationHolder a))
  (define-method-port
    get-object-data
    System.Reflection.MemberInfoSerializationHolder
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    serialize
    System.Reflection.MemberInfoSerializationHolder
    Serialize
    (static:
      System.Void
      System.Runtime.Serialization.SerializationInfo
      System.String
      System.Type
      System.String
      System.Reflection.MemberTypes
      System.Type[])
    (static:
      System.Void
      System.Runtime.Serialization.SerializationInfo
      System.String
      System.Type
      System.String
      System.Reflection.MemberTypes))
  (define-method-port
    get-real-object
    System.Reflection.MemberInfoSerializationHolder
    GetRealObject
    (System.Object System.Runtime.Serialization.StreamingContext)))
