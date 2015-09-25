(library (system runtime remoting channels server-dispatch-sink)
  (export new
          is?
          server-dispatch-sink?
          async-process-response
          get-response-stream
          process-message
          next-channel-sink
          properties)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Channels.ServerDispatchSink
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Channels.ServerDispatchSink a))
  (define (server-dispatch-sink? a)
    (clr-is System.Runtime.Remoting.Channels.ServerDispatchSink a))
  (define-method-port
    async-process-response
    System.Runtime.Remoting.Channels.ServerDispatchSink
    AsyncProcessResponse
    (System.Void
      System.Runtime.Remoting.Channels.IServerResponseChannelSinkStack
      System.Object
      System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Channels.ITransportHeaders
      System.IO.Stream))
  (define-method-port
    get-response-stream
    System.Runtime.Remoting.Channels.ServerDispatchSink
    GetResponseStream
    (System.IO.Stream
      System.Runtime.Remoting.Channels.IServerResponseChannelSinkStack
      System.Object
      System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Channels.ITransportHeaders))
  (define-method-port
    process-message
    System.Runtime.Remoting.Channels.ServerDispatchSink
    ProcessMessage
    (System.Runtime.Remoting.Channels.ServerProcessing
      System.Runtime.Remoting.Channels.IServerChannelSinkStack
      System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Channels.ITransportHeaders
      System.IO.Stream
      System.Runtime.Remoting.Messaging.IMessage&
      System.Runtime.Remoting.Channels.ITransportHeaders&
      System.IO.Stream&))
  (define-field-port
    next-channel-sink
    #f
    #f
    (property:)
    System.Runtime.Remoting.Channels.ServerDispatchSink
    NextChannelSink
    System.Runtime.Remoting.Channels.IServerChannelSink)
  (define-field-port
    properties
    #f
    #f
    (property:)
    System.Runtime.Remoting.Channels.ServerDispatchSink
    Properties
    System.Collections.IDictionary))
