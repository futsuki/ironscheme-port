(library (system
          runtime
          remoting
          contexts
          synchronized-server-context-sink)
  (export new
          is?
          synchronized-server-context-sink?
          sync-process-message
          async-process-message
          next-sink)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Contexts.SynchronizedServerContextSink
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.Remoting.Contexts.SynchronizedServerContextSink
      a))
  (define (synchronized-server-context-sink? a)
    (clr-is
      System.Runtime.Remoting.Contexts.SynchronizedServerContextSink
      a))
  (define-method-port
    sync-process-message
    System.Runtime.Remoting.Contexts.SynchronizedServerContextSink
    SyncProcessMessage
    (System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessage))
  (define-method-port
    async-process-message
    System.Runtime.Remoting.Contexts.SynchronizedServerContextSink
    AsyncProcessMessage
    (System.Runtime.Remoting.Messaging.IMessageCtrl
      System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessageSink))
  (define-field-port
    next-sink
    #f
    #f
    (property:)
    System.Runtime.Remoting.Contexts.SynchronizedServerContextSink
    NextSink
    System.Runtime.Remoting.Messaging.IMessageSink))
