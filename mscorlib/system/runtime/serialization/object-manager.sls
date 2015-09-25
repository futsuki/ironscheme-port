(library (system runtime serialization object-manager)
  (export new
          is?
          object-manager?
          get-object
          record-delayed-fixup
          record-fixup
          register-object
          raise-on-deserializing-event
          raise-deserialization-event
          do-fixups
          record-array-element-fixup)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Serialization.ObjectManager
             a
             ...)))))
  (define (is? a) (clr-is System.Runtime.Serialization.ObjectManager a))
  (define (object-manager? a)
    (clr-is System.Runtime.Serialization.ObjectManager a))
  (define-method-port
    get-object
    System.Runtime.Serialization.ObjectManager
    GetObject
    (System.Object System.Int64))
  (define-method-port
    record-delayed-fixup
    System.Runtime.Serialization.ObjectManager
    RecordDelayedFixup
    (System.Void System.Int64 System.String System.Int64))
  (define-method-port
    record-fixup
    System.Runtime.Serialization.ObjectManager
    RecordFixup
    (System.Void
      System.Int64
      System.Reflection.MemberInfo
      System.Int64))
  (define-method-port
    register-object
    System.Runtime.Serialization.ObjectManager
    RegisterObject
    (System.Void
      System.Object
      System.Int64
      System.Runtime.Serialization.SerializationInfo
      System.Int64
      System.Reflection.MemberInfo
      System.Int32[])
    (System.Void
      System.Object
      System.Int64
      System.Runtime.Serialization.SerializationInfo
      System.Int64
      System.Reflection.MemberInfo)
    (System.Void
      System.Object
      System.Int64
      System.Runtime.Serialization.SerializationInfo)
    (System.Void System.Object System.Int64))
  (define-method-port
    raise-on-deserializing-event
    System.Runtime.Serialization.ObjectManager
    RaiseOnDeserializingEvent
    (System.Void System.Object))
  (define-method-port
    raise-deserialization-event
    System.Runtime.Serialization.ObjectManager
    RaiseDeserializationEvent
    (System.Void))
  (define-method-port
    do-fixups
    System.Runtime.Serialization.ObjectManager
    DoFixups
    (System.Void))
  (define-method-port
    record-array-element-fixup
    System.Runtime.Serialization.ObjectManager
    RecordArrayElementFixup
    (System.Void System.Int64 System.Int32[] System.Int64)
    (System.Void System.Int64 System.Int32 System.Int64)))
