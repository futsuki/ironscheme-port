(library (system runtime serialization serialization-object-manager)
  (export new
          is?
          serialization-object-manager?
          register-object
          raise-on-serialized-event)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Serialization.SerializationObjectManager
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Serialization.SerializationObjectManager a))
  (define (serialization-object-manager? a)
    (clr-is System.Runtime.Serialization.SerializationObjectManager a))
  (define-method-port
    register-object
    System.Runtime.Serialization.SerializationObjectManager
    RegisterObject
    (System.Void System.Object))
  (define-method-port
    raise-on-serialized-event
    System.Runtime.Serialization.SerializationObjectManager
    RaiseOnSerializedEvent
    (System.Void)))
