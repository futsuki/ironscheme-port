(library (system runtime remoting channel-info)
  (export new
          is?
          channel-info?
          channel-data-get
          channel-data-set!
          channel-data-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Runtime.Remoting.ChannelInfo a ...)))))
  (define (is? a) (clr-is System.Runtime.Remoting.ChannelInfo a))
  (define (channel-info? a)
    (clr-is System.Runtime.Remoting.ChannelInfo a))
  (define-field-port
    channel-data-get
    channel-data-set!
    channel-data-update!
    (property:)
    System.Runtime.Remoting.ChannelInfo
    ChannelData
    System.Object[]))
