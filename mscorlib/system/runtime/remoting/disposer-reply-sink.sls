(library (system runtime remoting disposer-reply-sink)
  (export new
          is?
          disposer-reply-sink?
          sync-process-message
          async-process-message
          next-sink)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Runtime.Remoting.DisposerReplySink a ...)))))
  (define (is? a) (clr-is System.Runtime.Remoting.DisposerReplySink a))
  (define (disposer-reply-sink? a)
    (clr-is System.Runtime.Remoting.DisposerReplySink a))
  (define-method-port
    sync-process-message
    System.Runtime.Remoting.DisposerReplySink
    SyncProcessMessage
    (System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessage))
  (define-method-port
    async-process-message
    System.Runtime.Remoting.DisposerReplySink
    AsyncProcessMessage
    (System.Runtime.Remoting.Messaging.IMessageCtrl
      System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessageSink))
  (define-field-port
    next-sink
    #f
    #f
    (property:)
    System.Runtime.Remoting.DisposerReplySink
    NextSink
    System.Runtime.Remoting.Messaging.IMessageSink))
