(library (system runtime remoting messaging remoting-surrogate)
  (export new is? remoting-surrogate? set-object-data get-object-data)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Messaging.RemotingSurrogate
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Messaging.RemotingSurrogate a))
  (define (remoting-surrogate? a)
    (clr-is System.Runtime.Remoting.Messaging.RemotingSurrogate a))
  (define-method-port
    set-object-data
    System.Runtime.Remoting.Messaging.RemotingSurrogate
    SetObjectData
    (System.Object
      System.Object
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext
      System.Runtime.Serialization.ISurrogateSelector))
  (define-method-port
    get-object-data
    System.Runtime.Remoting.Messaging.RemotingSurrogate
    GetObjectData
    (System.Void
      System.Object
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext)))
