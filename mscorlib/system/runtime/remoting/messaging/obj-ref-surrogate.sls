(library (system runtime remoting messaging obj-ref-surrogate)
  (export new is? obj-ref-surrogate? set-object-data get-object-data)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Messaging.ObjRefSurrogate
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Messaging.ObjRefSurrogate a))
  (define (obj-ref-surrogate? a)
    (clr-is System.Runtime.Remoting.Messaging.ObjRefSurrogate a))
  (define-method-port
    set-object-data
    System.Runtime.Remoting.Messaging.ObjRefSurrogate
    SetObjectData
    (System.Object
      System.Object
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext
      System.Runtime.Serialization.ISurrogateSelector))
  (define-method-port
    get-object-data
    System.Runtime.Remoting.Messaging.ObjRefSurrogate
    GetObjectData
    (System.Void
      System.Object
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext)))
