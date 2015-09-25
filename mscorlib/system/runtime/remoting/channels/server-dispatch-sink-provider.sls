(library (system
          runtime
          remoting
          channels
          server-dispatch-sink-provider)
  (export new
          is?
          server-dispatch-sink-provider?
          create-sink
          get-channel-data
          next-get
          next-set!
          next-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Channels.ServerDispatchSinkProvider
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.Remoting.Channels.ServerDispatchSinkProvider
      a))
  (define (server-dispatch-sink-provider? a)
    (clr-is
      System.Runtime.Remoting.Channels.ServerDispatchSinkProvider
      a))
  (define-method-port
    create-sink
    System.Runtime.Remoting.Channels.ServerDispatchSinkProvider
    CreateSink
    (System.Runtime.Remoting.Channels.IServerChannelSink
      System.Runtime.Remoting.Channels.IChannelReceiver))
  (define-method-port
    get-channel-data
    System.Runtime.Remoting.Channels.ServerDispatchSinkProvider
    GetChannelData
    (System.Void System.Runtime.Remoting.Channels.IChannelDataStore))
  (define-field-port
    next-get
    next-set!
    next-update!
    (property:)
    System.Runtime.Remoting.Channels.ServerDispatchSinkProvider
    Next
    System.Runtime.Remoting.Channels.IServerChannelSinkProvider))
