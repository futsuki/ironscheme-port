(library (system
          runtime
          remoting
          messaging
          server-object-terminator-sink)
  (export new
          is?
          server-object-terminator-sink?
          sync-process-message
          async-process-message
          next-sink)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Messaging.ServerObjectTerminatorSink
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.Remoting.Messaging.ServerObjectTerminatorSink
      a))
  (define (server-object-terminator-sink? a)
    (clr-is
      System.Runtime.Remoting.Messaging.ServerObjectTerminatorSink
      a))
  (define-method-port
    sync-process-message
    System.Runtime.Remoting.Messaging.ServerObjectTerminatorSink
    SyncProcessMessage
    (System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessage))
  (define-method-port
    async-process-message
    System.Runtime.Remoting.Messaging.ServerObjectTerminatorSink
    AsyncProcessMessage
    (System.Runtime.Remoting.Messaging.IMessageCtrl
      System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessageSink))
  (define-field-port
    next-sink
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.ServerObjectTerminatorSink
    NextSink
    System.Runtime.Remoting.Messaging.IMessageSink))
