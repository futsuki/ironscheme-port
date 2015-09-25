(library (system runtime remoting channels channel-data-store)
  (export new
          is?
          channel-data-store?
          channel-uris-get
          channel-uris-set!
          channel-uris-update!
          item-get
          item-set!
          item-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Channels.ChannelDataStore
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Channels.ChannelDataStore a))
  (define (channel-data-store? a)
    (clr-is System.Runtime.Remoting.Channels.ChannelDataStore a))
  (define-field-port
    channel-uris-get
    channel-uris-set!
    channel-uris-update!
    (property:)
    System.Runtime.Remoting.Channels.ChannelDataStore
    ChannelUris
    System.String[])
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Runtime.Remoting.Channels.ChannelDataStore
    Item
    System.Object))
