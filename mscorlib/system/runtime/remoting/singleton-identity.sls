(library (system runtime remoting singleton-identity)
  (export new
          is?
          singleton-identity?
          async-object-process-message
          sync-object-process-message
          get-server-object)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Runtime.Remoting.SingletonIdentity a ...)))))
  (define (is? a) (clr-is System.Runtime.Remoting.SingletonIdentity a))
  (define (singleton-identity? a)
    (clr-is System.Runtime.Remoting.SingletonIdentity a))
  (define-method-port
    async-object-process-message
    System.Runtime.Remoting.SingletonIdentity
    AsyncObjectProcessMessage
    (System.Runtime.Remoting.Messaging.IMessageCtrl
      System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessageSink))
  (define-method-port
    sync-object-process-message
    System.Runtime.Remoting.SingletonIdentity
    SyncObjectProcessMessage
    (System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessage))
  (define-method-port
    get-server-object
    System.Runtime.Remoting.SingletonIdentity
    GetServerObject
    (System.MarshalByRefObject)))
