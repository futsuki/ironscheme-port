(library (system runtime remoting lifetime lease-sink)
  (export new
          is?
          lease-sink?
          sync-process-message
          async-process-message
          next-sink)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Lifetime.LeaseSink
             a
             ...)))))
  (define (is? a) (clr-is System.Runtime.Remoting.Lifetime.LeaseSink a))
  (define (lease-sink? a)
    (clr-is System.Runtime.Remoting.Lifetime.LeaseSink a))
  (define-method-port
    sync-process-message
    System.Runtime.Remoting.Lifetime.LeaseSink
    SyncProcessMessage
    (System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessage))
  (define-method-port
    async-process-message
    System.Runtime.Remoting.Lifetime.LeaseSink
    AsyncProcessMessage
    (System.Runtime.Remoting.Messaging.IMessageCtrl
      System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessageSink))
  (define-field-port
    next-sink
    #f
    #f
    (property:)
    System.Runtime.Remoting.Lifetime.LeaseSink
    NextSink
    System.Runtime.Remoting.Messaging.IMessageSink))
