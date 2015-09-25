(library (system runtime remoting client-activated-identity)
  (export new
          is?
          client-activated-identity?
          get-client-proxy
          async-object-process-message
          on-lifetime-expired
          sync-object-process-message
          set-client-proxy
          get-server-object)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.ClientActivatedIdentity
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.ClientActivatedIdentity a))
  (define (client-activated-identity? a)
    (clr-is System.Runtime.Remoting.ClientActivatedIdentity a))
  (define-method-port
    get-client-proxy
    System.Runtime.Remoting.ClientActivatedIdentity
    GetClientProxy
    (System.MarshalByRefObject))
  (define-method-port
    async-object-process-message
    System.Runtime.Remoting.ClientActivatedIdentity
    AsyncObjectProcessMessage
    (System.Runtime.Remoting.Messaging.IMessageCtrl
      System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessageSink))
  (define-method-port
    on-lifetime-expired
    System.Runtime.Remoting.ClientActivatedIdentity
    OnLifetimeExpired
    (System.Void))
  (define-method-port
    sync-object-process-message
    System.Runtime.Remoting.ClientActivatedIdentity
    SyncObjectProcessMessage
    (System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessage))
  (define-method-port
    set-client-proxy
    System.Runtime.Remoting.ClientActivatedIdentity
    SetClientProxy
    (System.Void System.MarshalByRefObject))
  (define-method-port
    get-server-object
    System.Runtime.Remoting.ClientActivatedIdentity
    GetServerObject
    (System.MarshalByRefObject)))
