(library (system runtime remoting messaging client-context-reply-sink)
  (export new
          is?
          client-context-reply-sink?
          sync-process-message
          async-process-message
          next-sink)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Messaging.ClientContextReplySink
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Messaging.ClientContextReplySink a))
  (define (client-context-reply-sink? a)
    (clr-is System.Runtime.Remoting.Messaging.ClientContextReplySink a))
  (define-method-port
    sync-process-message
    System.Runtime.Remoting.Messaging.ClientContextReplySink
    SyncProcessMessage
    (System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessage))
  (define-method-port
    async-process-message
    System.Runtime.Remoting.Messaging.ClientContextReplySink
    AsyncProcessMessage
    (System.Runtime.Remoting.Messaging.IMessageCtrl
      System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessageSink))
  (define-field-port
    next-sink
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.ClientContextReplySink
    NextSink
    System.Runtime.Remoting.Messaging.IMessageSink))
