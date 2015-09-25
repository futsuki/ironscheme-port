(library (system runtime remoting channels cross-app-domain-sink)
  (export is?
          cross-app-domain-sink?
          send-async-message
          sync-process-message
          async-process-message
          next-sink)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Channels.CrossAppDomainSink a))
  (define (cross-app-domain-sink? a)
    (clr-is System.Runtime.Remoting.Channels.CrossAppDomainSink a))
  (define-method-port
    send-async-message
    System.Runtime.Remoting.Channels.CrossAppDomainSink
    SendAsyncMessage
    (System.Void System.Object))
  (define-method-port
    sync-process-message
    System.Runtime.Remoting.Channels.CrossAppDomainSink
    SyncProcessMessage
    (System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessage))
  (define-method-port
    async-process-message
    System.Runtime.Remoting.Channels.CrossAppDomainSink
    AsyncProcessMessage
    (System.Runtime.Remoting.Messaging.IMessageCtrl
      System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessageSink))
  (define-field-port
    next-sink
    #f
    #f
    (property:)
    System.Runtime.Remoting.Channels.CrossAppDomainSink
    NextSink
    System.Runtime.Remoting.Messaging.IMessageSink))
