(library (system runtime remoting server-identity)
  (export new
          is?
          server-identity?
          create-obj-ref
          async-object-process-message
          on-lifetime-expired
          sync-object-process-message
          start-tracking-lifetime
          attach-server-object
          object-type
          lease
          context-get
          context-set!
          context-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Runtime.Remoting.ServerIdentity a ...)))))
  (define (is? a) (clr-is System.Runtime.Remoting.ServerIdentity a))
  (define (server-identity? a)
    (clr-is System.Runtime.Remoting.ServerIdentity a))
  (define-method-port
    create-obj-ref
    System.Runtime.Remoting.ServerIdentity
    CreateObjRef
    (System.Runtime.Remoting.ObjRef System.Type))
  (define-method-port
    async-object-process-message
    System.Runtime.Remoting.ServerIdentity
    AsyncObjectProcessMessage
    (System.Runtime.Remoting.Messaging.IMessageCtrl
      System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessageSink))
  (define-method-port
    on-lifetime-expired
    System.Runtime.Remoting.ServerIdentity
    OnLifetimeExpired
    (System.Void))
  (define-method-port
    sync-object-process-message
    System.Runtime.Remoting.ServerIdentity
    SyncObjectProcessMessage
    (System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessage))
  (define-method-port
    start-tracking-lifetime
    System.Runtime.Remoting.ServerIdentity
    StartTrackingLifetime
    (System.Void System.Runtime.Remoting.Lifetime.ILease))
  (define-method-port
    attach-server-object
    System.Runtime.Remoting.ServerIdentity
    AttachServerObject
    (System.Void
      System.MarshalByRefObject
      System.Runtime.Remoting.Contexts.Context))
  (define-field-port
    object-type
    #f
    #f
    (property:)
    System.Runtime.Remoting.ServerIdentity
    ObjectType
    System.Type)
  (define-field-port
    lease
    #f
    #f
    (property:)
    System.Runtime.Remoting.ServerIdentity
    Lease
    System.Runtime.Remoting.Lifetime.Lease)
  (define-field-port
    context-get
    context-set!
    context-update!
    (property:)
    System.Runtime.Remoting.ServerIdentity
    Context
    System.Runtime.Remoting.Contexts.Context))
