(library (system
          runtime
          remoting
          messaging
          server-context-terminator-sink)
  (export new
          is?
          server-context-terminator-sink?
          sync-process-message
          async-process-message
          next-sink)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Messaging.ServerContextTerminatorSink
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.Remoting.Messaging.ServerContextTerminatorSink
      a))
  (define (server-context-terminator-sink? a)
    (clr-is
      System.Runtime.Remoting.Messaging.ServerContextTerminatorSink
      a))
  (define-method-port
    sync-process-message
    System.Runtime.Remoting.Messaging.ServerContextTerminatorSink
    SyncProcessMessage
    (System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessage))
  (define-method-port
    async-process-message
    System.Runtime.Remoting.Messaging.ServerContextTerminatorSink
    AsyncProcessMessage
    (System.Runtime.Remoting.Messaging.IMessageCtrl
      System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessageSink))
  (define-field-port
    next-sink
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.ServerContextTerminatorSink
    NextSink
    System.Runtime.Remoting.Messaging.IMessageSink))
