(library (system runtime remoting messaging stack-builder-sink)
  (export new
          is?
          stack-builder-sink?
          sync-process-message
          async-process-message
          next-sink)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Messaging.StackBuilderSink
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Messaging.StackBuilderSink a))
  (define (stack-builder-sink? a)
    (clr-is System.Runtime.Remoting.Messaging.StackBuilderSink a))
  (define-method-port
    sync-process-message
    System.Runtime.Remoting.Messaging.StackBuilderSink
    SyncProcessMessage
    (System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessage))
  (define-method-port
    async-process-message
    System.Runtime.Remoting.Messaging.StackBuilderSink
    AsyncProcessMessage
    (System.Runtime.Remoting.Messaging.IMessageCtrl
      System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessageSink))
  (define-field-port
    next-sink
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.StackBuilderSink
    NextSink
    System.Runtime.Remoting.Messaging.IMessageSink))
