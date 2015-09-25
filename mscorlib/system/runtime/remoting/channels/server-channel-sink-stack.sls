(library (system runtime remoting channels server-channel-sink-stack)
  (export new
          is?
          server-channel-sink-stack?
          store-and-dispatch
          push
          server-callback
          async-process-response
          get-response-stream
          pop
          store)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Channels.ServerChannelSinkStack
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Channels.ServerChannelSinkStack a))
  (define (server-channel-sink-stack? a)
    (clr-is System.Runtime.Remoting.Channels.ServerChannelSinkStack a))
  (define-method-port
    store-and-dispatch
    System.Runtime.Remoting.Channels.ServerChannelSinkStack
    StoreAndDispatch
    (System.Void
      System.Runtime.Remoting.Channels.IServerChannelSink
      System.Object))
  (define-method-port
    push
    System.Runtime.Remoting.Channels.ServerChannelSinkStack
    Push
    (System.Void
      System.Runtime.Remoting.Channels.IServerChannelSink
      System.Object))
  (define-method-port
    server-callback
    System.Runtime.Remoting.Channels.ServerChannelSinkStack
    ServerCallback
    (System.Void System.IAsyncResult))
  (define-method-port
    async-process-response
    System.Runtime.Remoting.Channels.ServerChannelSinkStack
    AsyncProcessResponse
    (System.Void
      System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Channels.ITransportHeaders
      System.IO.Stream))
  (define-method-port
    get-response-stream
    System.Runtime.Remoting.Channels.ServerChannelSinkStack
    GetResponseStream
    (System.IO.Stream
      System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Channels.ITransportHeaders))
  (define-method-port
    pop
    System.Runtime.Remoting.Channels.ServerChannelSinkStack
    Pop
    (System.Object System.Runtime.Remoting.Channels.IServerChannelSink))
  (define-method-port
    store
    System.Runtime.Remoting.Channels.ServerChannelSinkStack
    Store
    (System.Void
      System.Runtime.Remoting.Channels.IServerChannelSink
      System.Object)))
