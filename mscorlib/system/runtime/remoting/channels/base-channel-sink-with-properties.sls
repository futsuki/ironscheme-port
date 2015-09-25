(library (system
          runtime
          remoting
          channels
          base-channel-sink-with-properties)
  (export is? base-channel-sink-with-properties?)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      System.Runtime.Remoting.Channels.BaseChannelSinkWithProperties
      a))
  (define (base-channel-sink-with-properties? a)
    (clr-is
      System.Runtime.Remoting.Channels.BaseChannelSinkWithProperties
      a)))
