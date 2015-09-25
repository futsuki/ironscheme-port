(library (system
          runtime
          remoting
          contexts
          synchronized-client-context-sink)
  (export new
          is?
          synchronized-client-context-sink?
          sync-process-message
          async-process-message
          next-sink)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Contexts.SynchronizedClientContextSink
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.Remoting.Contexts.SynchronizedClientContextSink
      a))
  (define (synchronized-client-context-sink? a)
    (clr-is
      System.Runtime.Remoting.Contexts.SynchronizedClientContextSink
      a))
  (define-method-port
    sync-process-message
    System.Runtime.Remoting.Contexts.SynchronizedClientContextSink
    SyncProcessMessage
    (System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessage))
  (define-method-port
    async-process-message
    System.Runtime.Remoting.Contexts.SynchronizedClientContextSink
    AsyncProcessMessage
    (System.Runtime.Remoting.Messaging.IMessageCtrl
      System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessageSink))
  (define-field-port
    next-sink
    #f
    #f
    (property:)
    System.Runtime.Remoting.Contexts.SynchronizedClientContextSink
    NextSink
    System.Runtime.Remoting.Messaging.IMessageSink))
