(library (system runtime remoting channels channel-services)
  (export is?
          channel-services?
          register-channel
          dispatch-message
          get-channel-sink-properties
          create-server-channel-sink-chain
          async-dispatch-message
          get-channel
          sync-dispatch-message
          unregister-channel
          get-urls-for-object
          registered-channels)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Channels.ChannelServices a))
  (define (channel-services? a)
    (clr-is System.Runtime.Remoting.Channels.ChannelServices a))
  (define-method-port
    register-channel
    System.Runtime.Remoting.Channels.ChannelServices
    RegisterChannel
    (static:
      System.Void
      System.Runtime.Remoting.Channels.IChannel
      System.Boolean)
    (static: System.Void System.Runtime.Remoting.Channels.IChannel))
  (define-method-port
    dispatch-message
    System.Runtime.Remoting.Channels.ChannelServices
    DispatchMessage
    (static:
      System.Runtime.Remoting.Channels.ServerProcessing
      System.Runtime.Remoting.Channels.IServerChannelSinkStack
      System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessage&))
  (define-method-port
    get-channel-sink-properties
    System.Runtime.Remoting.Channels.ChannelServices
    GetChannelSinkProperties
    (static: System.Collections.IDictionary System.Object))
  (define-method-port
    create-server-channel-sink-chain
    System.Runtime.Remoting.Channels.ChannelServices
    CreateServerChannelSinkChain
    (static:
      System.Runtime.Remoting.Channels.IServerChannelSink
      System.Runtime.Remoting.Channels.IServerChannelSinkProvider
      System.Runtime.Remoting.Channels.IChannelReceiver))
  (define-method-port
    async-dispatch-message
    System.Runtime.Remoting.Channels.ChannelServices
    AsyncDispatchMessage
    (static:
      System.Runtime.Remoting.Messaging.IMessageCtrl
      System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessageSink))
  (define-method-port
    get-channel
    System.Runtime.Remoting.Channels.ChannelServices
    GetChannel
    (static: System.Runtime.Remoting.Channels.IChannel System.String))
  (define-method-port
    sync-dispatch-message
    System.Runtime.Remoting.Channels.ChannelServices
    SyncDispatchMessage
    (static:
      System.Runtime.Remoting.Messaging.IMessage
      System.Runtime.Remoting.Messaging.IMessage))
  (define-method-port
    unregister-channel
    System.Runtime.Remoting.Channels.ChannelServices
    UnregisterChannel
    (static: System.Void System.Runtime.Remoting.Channels.IChannel))
  (define-method-port
    get-urls-for-object
    System.Runtime.Remoting.Channels.ChannelServices
    GetUrlsForObject
    (static: System.String[] System.MarshalByRefObject))
  (define-field-port
    registered-channels
    #f
    #f
    (static: property:)
    System.Runtime.Remoting.Channels.ChannelServices
    RegisteredChannels
    System.Runtime.Remoting.Channels.IChannel[]))
