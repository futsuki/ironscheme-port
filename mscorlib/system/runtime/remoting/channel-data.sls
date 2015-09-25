(library (system runtime remoting channel-data)
  (export new
          is?
          channel-data?
          copy-from
          client-providers
          custom-properties)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Runtime.Remoting.ChannelData a ...)))))
  (define (is? a) (clr-is System.Runtime.Remoting.ChannelData a))
  (define (channel-data? a)
    (clr-is System.Runtime.Remoting.ChannelData a))
  (define-method-port
    copy-from
    System.Runtime.Remoting.ChannelData
    CopyFrom
    (System.Void System.Runtime.Remoting.ChannelData))
  (define-field-port
    client-providers
    #f
    #f
    (property:)
    System.Runtime.Remoting.ChannelData
    ClientProviders
    System.Collections.ArrayList)
  (define-field-port
    custom-properties
    #f
    #f
    (property:)
    System.Runtime.Remoting.ChannelData
    CustomProperties
    System.Collections.Hashtable))
