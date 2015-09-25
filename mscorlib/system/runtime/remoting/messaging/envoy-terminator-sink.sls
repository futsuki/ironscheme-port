(library (system runtime remoting messaging envoy-terminator-sink)
  (export new
          is?
          envoy-terminator-sink?
          sync-process-message
          async-process-message
          instance-get
          instance-set!
          instance-update!
          next-sink)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Messaging.EnvoyTerminatorSink
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Messaging.EnvoyTerminatorSink a))
  (define (envoy-terminator-sink? a)
    (clr-is System.Runtime.Remoting.Messaging.EnvoyTerminatorSink a))
  (define-method-port
    sync-process-message
    System.Runtime.Remoting.Messaging.EnvoyTerminatorSink
    SyncProcessMessage
    (System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessage))
  (define-method-port
    async-process-message
    System.Runtime.Remoting.Messaging.EnvoyTerminatorSink
    AsyncProcessMessage
    (System.Runtime.Remoting.Messaging.IMessageCtrl
      System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessageSink))
  (define-field-port
    instance-get
    instance-set!
    instance-update!
    (static:)
    System.Runtime.Remoting.Messaging.EnvoyTerminatorSink
    Instance
    System.Runtime.Remoting.Messaging.EnvoyTerminatorSink)
  (define-field-port
    next-sink
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.EnvoyTerminatorSink
    NextSink
    System.Runtime.Remoting.Messaging.IMessageSink))
