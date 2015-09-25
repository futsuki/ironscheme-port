(library (system runtime remoting messaging server-object-reply-sink)
  (export new
          is?
          server-object-reply-sink?
          sync-process-message
          async-process-message
          next-sink)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Messaging.ServerObjectReplySink
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Messaging.ServerObjectReplySink a))
  (define (server-object-reply-sink? a)
    (clr-is System.Runtime.Remoting.Messaging.ServerObjectReplySink a))
  (define-method-port
    sync-process-message
    System.Runtime.Remoting.Messaging.ServerObjectReplySink
    SyncProcessMessage
    (System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessage))
  (define-method-port
    async-process-message
    System.Runtime.Remoting.Messaging.ServerObjectReplySink
    AsyncProcessMessage
    (System.Runtime.Remoting.Messaging.IMessageCtrl
      System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessageSink))
  (define-field-port
    next-sink
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.ServerObjectReplySink
    NextSink
    System.Runtime.Remoting.Messaging.IMessageSink))
