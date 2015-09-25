(library (system runtime remoting contexts cross-context-channel)
  (export new
          is?
          cross-context-channel?
          sync-process-message
          async-process-message
          next-sink)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Contexts.CrossContextChannel
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Contexts.CrossContextChannel a))
  (define (cross-context-channel? a)
    (clr-is System.Runtime.Remoting.Contexts.CrossContextChannel a))
  (define-method-port
    sync-process-message
    System.Runtime.Remoting.Contexts.CrossContextChannel
    SyncProcessMessage
    (System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessage))
  (define-method-port
    async-process-message
    System.Runtime.Remoting.Contexts.CrossContextChannel
    AsyncProcessMessage
    (System.Runtime.Remoting.Messaging.IMessageCtrl
      System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessageSink))
  (define-field-port
    next-sink
    #f
    #f
    (property:)
    System.Runtime.Remoting.Contexts.CrossContextChannel
    NextSink
    System.Runtime.Remoting.Messaging.IMessageSink))
