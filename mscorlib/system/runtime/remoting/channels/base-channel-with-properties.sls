(library (system runtime remoting channels base-channel-with-properties)
  (export is? base-channel-with-properties? properties)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      System.Runtime.Remoting.Channels.BaseChannelWithProperties
      a))
  (define (base-channel-with-properties? a)
    (clr-is
      System.Runtime.Remoting.Channels.BaseChannelWithProperties
      a))
  (define-field-port
    properties
    #f
    #f
    (property:)
    System.Runtime.Remoting.Channels.BaseChannelWithProperties
    Properties
    System.Collections.IDictionary))
