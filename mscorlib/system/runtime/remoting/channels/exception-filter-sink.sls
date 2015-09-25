(library (system runtime remoting channels exception-filter-sink)
  (export new
          is?
          exception-filter-sink?
          sync-process-message
          async-process-message
          next-sink)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Channels.ExceptionFilterSink
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Channels.ExceptionFilterSink a))
  (define (exception-filter-sink? a)
    (clr-is System.Runtime.Remoting.Channels.ExceptionFilterSink a))
  (define-method-port
    sync-process-message
    System.Runtime.Remoting.Channels.ExceptionFilterSink
    SyncProcessMessage
    (System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessage))
  (define-method-port
    async-process-message
    System.Runtime.Remoting.Channels.ExceptionFilterSink
    AsyncProcessMessage
    (System.Runtime.Remoting.Messaging.IMessageCtrl
      System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessageSink))
  (define-field-port
    next-sink
    #f
    #f
    (property:)
    System.Runtime.Remoting.Channels.ExceptionFilterSink
    NextSink
    System.Runtime.Remoting.Messaging.IMessageSink))
