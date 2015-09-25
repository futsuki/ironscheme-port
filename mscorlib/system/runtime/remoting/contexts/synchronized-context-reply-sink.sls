(library (system
          runtime
          remoting
          contexts
          synchronized-context-reply-sink)
  (export new
          is?
          synchronized-context-reply-sink?
          sync-process-message
          async-process-message
          next-sink)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Contexts.SynchronizedContextReplySink
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.Remoting.Contexts.SynchronizedContextReplySink
      a))
  (define (synchronized-context-reply-sink? a)
    (clr-is
      System.Runtime.Remoting.Contexts.SynchronizedContextReplySink
      a))
  (define-method-port
    sync-process-message
    System.Runtime.Remoting.Contexts.SynchronizedContextReplySink
    SyncProcessMessage
    (System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessage))
  (define-method-port
    async-process-message
    System.Runtime.Remoting.Contexts.SynchronizedContextReplySink
    AsyncProcessMessage
    (System.Runtime.Remoting.Messaging.IMessageCtrl
      System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessageSink))
  (define-field-port
    next-sink
    #f
    #f
    (property:)
    System.Runtime.Remoting.Contexts.SynchronizedContextReplySink
    NextSink
    System.Runtime.Remoting.Messaging.IMessageSink))
