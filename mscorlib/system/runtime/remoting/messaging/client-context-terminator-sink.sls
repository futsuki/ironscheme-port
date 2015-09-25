(library (system
          runtime
          remoting
          messaging
          client-context-terminator-sink)
  (export new
          is?
          client-context-terminator-sink?
          sync-process-message
          async-process-message
          next-sink)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Messaging.ClientContextTerminatorSink
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.Remoting.Messaging.ClientContextTerminatorSink
      a))
  (define (client-context-terminator-sink? a)
    (clr-is
      System.Runtime.Remoting.Messaging.ClientContextTerminatorSink
      a))
  (define-method-port
    sync-process-message
    System.Runtime.Remoting.Messaging.ClientContextTerminatorSink
    SyncProcessMessage
    (System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessage))
  (define-method-port
    async-process-message
    System.Runtime.Remoting.Messaging.ClientContextTerminatorSink
    AsyncProcessMessage
    (System.Runtime.Remoting.Messaging.IMessageCtrl
      System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessageSink))
  (define-field-port
    next-sink
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.ClientContextTerminatorSink
    NextSink
    System.Runtime.Remoting.Messaging.IMessageSink))
