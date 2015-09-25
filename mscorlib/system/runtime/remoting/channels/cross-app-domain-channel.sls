(library (system runtime remoting channels cross-app-domain-channel)
  (export new
          is?
          cross-app-domain-channel?
          parse
          stop-listening
          create-message-sink
          get-urls-for-uri
          start-listening
          channel-name
          channel-priority
          channel-data)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Channels.CrossAppDomainChannel
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Channels.CrossAppDomainChannel a))
  (define (cross-app-domain-channel? a)
    (clr-is System.Runtime.Remoting.Channels.CrossAppDomainChannel a))
  (define-method-port
    parse
    System.Runtime.Remoting.Channels.CrossAppDomainChannel
    Parse
    (System.String System.String System.String&))
  (define-method-port
    stop-listening
    System.Runtime.Remoting.Channels.CrossAppDomainChannel
    StopListening
    (System.Void System.Object))
  (define-method-port
    create-message-sink
    System.Runtime.Remoting.Channels.CrossAppDomainChannel
    CreateMessageSink
    (System.Runtime.Remoting.Messaging.IMessageSink
      System.String
      System.Object
      System.String&))
  (define-method-port
    get-urls-for-uri
    System.Runtime.Remoting.Channels.CrossAppDomainChannel
    GetUrlsForUri
    (System.String[] System.String))
  (define-method-port
    start-listening
    System.Runtime.Remoting.Channels.CrossAppDomainChannel
    StartListening
    (System.Void System.Object))
  (define-field-port
    channel-name
    #f
    #f
    (property:)
    System.Runtime.Remoting.Channels.CrossAppDomainChannel
    ChannelName
    System.String)
  (define-field-port
    channel-priority
    #f
    #f
    (property:)
    System.Runtime.Remoting.Channels.CrossAppDomainChannel
    ChannelPriority
    System.Int32)
  (define-field-port
    channel-data
    #f
    #f
    (property:)
    System.Runtime.Remoting.Channels.CrossAppDomainChannel
    ChannelData
    System.Object))
