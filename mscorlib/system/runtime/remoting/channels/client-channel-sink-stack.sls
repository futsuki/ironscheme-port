(library (system runtime remoting channels client-channel-sink-stack)
  (export new
          is?
          client-channel-sink-stack?
          push
          dispatch-exception
          async-process-response
          dispatch-reply-message
          pop)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Channels.ClientChannelSinkStack
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Channels.ClientChannelSinkStack a))
  (define (client-channel-sink-stack? a)
    (clr-is System.Runtime.Remoting.Channels.ClientChannelSinkStack a))
  (define-method-port
    push
    System.Runtime.Remoting.Channels.ClientChannelSinkStack
    Push
    (System.Void
      System.Runtime.Remoting.Channels.IClientChannelSink
      System.Object))
  (define-method-port
    dispatch-exception
    System.Runtime.Remoting.Channels.ClientChannelSinkStack
    DispatchException
    (System.Void System.Exception))
  (define-method-port
    async-process-response
    System.Runtime.Remoting.Channels.ClientChannelSinkStack
    AsyncProcessResponse
    (System.Void
      System.Runtime.Remoting.Channels.ITransportHeaders
      System.IO.Stream))
  (define-method-port
    dispatch-reply-message
    System.Runtime.Remoting.Channels.ClientChannelSinkStack
    DispatchReplyMessage
    (System.Void System.Runtime.Remoting.Messaging.IMessage))
  (define-method-port
    pop
    System.Runtime.Remoting.Channels.ClientChannelSinkStack
    Pop
    (System.Object
      System.Runtime.Remoting.Channels.IClientChannelSink)))
