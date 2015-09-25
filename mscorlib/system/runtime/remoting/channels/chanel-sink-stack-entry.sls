(library (system runtime remoting channels chanel-sink-stack-entry)
  (export new
          is?
          chanel-sink-stack-entry?
          sink-get
          sink-set!
          sink-update!
          state-get
          state-set!
          state-update!
          next-get
          next-set!
          next-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Channels.ChanelSinkStackEntry
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Channels.ChanelSinkStackEntry a))
  (define (chanel-sink-stack-entry? a)
    (clr-is System.Runtime.Remoting.Channels.ChanelSinkStackEntry a))
  (define-field-port
    sink-get
    sink-set!
    sink-update!
    ()
    System.Runtime.Remoting.Channels.ChanelSinkStackEntry
    Sink
    System.Runtime.Remoting.Channels.IChannelSinkBase)
  (define-field-port
    state-get
    state-set!
    state-update!
    ()
    System.Runtime.Remoting.Channels.ChanelSinkStackEntry
    State
    System.Object)
  (define-field-port
    next-get
    next-set!
    next-update!
    ()
    System.Runtime.Remoting.Channels.ChanelSinkStackEntry
    Next
    System.Runtime.Remoting.Channels.ChanelSinkStackEntry))
