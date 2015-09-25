(library (system runtime remoting single-call-identity)
  (export new
          is?
          single-call-identity?
          async-object-process-message
          sync-object-process-message)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.SingleCallIdentity
             a
             ...)))))
  (define (is? a) (clr-is System.Runtime.Remoting.SingleCallIdentity a))
  (define (single-call-identity? a)
    (clr-is System.Runtime.Remoting.SingleCallIdentity a))
  (define-method-port
    async-object-process-message
    System.Runtime.Remoting.SingleCallIdentity
    AsyncObjectProcessMessage
    (System.Runtime.Remoting.Messaging.IMessageCtrl
      System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessageSink))
  (define-method-port
    sync-object-process-message
    System.Runtime.Remoting.SingleCallIdentity
    SyncObjectProcessMessage
    (System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessage)))
