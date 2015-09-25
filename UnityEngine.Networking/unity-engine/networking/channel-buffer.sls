(library (unity-engine networking channel-buffer)
  (export new
          is?
          channel-buffer?
          dispose
          send-internal-buffer?
          check-internal-buffer
          send-writer?
          set-option?
          send?
          max-delay-get
          max-delay-set!
          max-delay-update!
          num-msgs-out
          num-buffered-msgs-out
          num-bytes-out
          num-msgs-in
          num-bytes-in
          num-buffered-per-second
          last-buffered-per-second)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.ChannelBuffer a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.ChannelBuffer a))
  (define (channel-buffer? a)
    (clr-is UnityEngine.Networking.ChannelBuffer a))
  (define-method-port
    dispose
    UnityEngine.Networking.ChannelBuffer
    Dispose
    (System.Void))
  (define-method-port
    send-internal-buffer?
    UnityEngine.Networking.ChannelBuffer
    SendInternalBuffer
    (System.Boolean))
  (define-method-port
    check-internal-buffer
    UnityEngine.Networking.ChannelBuffer
    CheckInternalBuffer
    (System.Void))
  (define-method-port
    send-writer?
    UnityEngine.Networking.ChannelBuffer
    SendWriter
    (System.Boolean UnityEngine.Networking.NetworkWriter))
  (define-method-port
    set-option?
    UnityEngine.Networking.ChannelBuffer
    SetOption
    (System.Boolean UnityEngine.Networking.ChannelOption System.Int32))
  (define-method-port
    send?
    UnityEngine.Networking.ChannelBuffer
    Send
    (System.Boolean System.Int16 UnityEngine.Networking.MessageBase))
  (define-field-port
    max-delay-get
    max-delay-set!
    max-delay-update!
    ()
    UnityEngine.Networking.ChannelBuffer
    maxDelay
    System.Single)
  (define-field-port
    num-msgs-out
    #f
    #f
    (property:)
    UnityEngine.Networking.ChannelBuffer
    numMsgsOut
    System.Int32)
  (define-field-port
    num-buffered-msgs-out
    #f
    #f
    (property:)
    UnityEngine.Networking.ChannelBuffer
    numBufferedMsgsOut
    System.Int32)
  (define-field-port
    num-bytes-out
    #f
    #f
    (property:)
    UnityEngine.Networking.ChannelBuffer
    numBytesOut
    System.Int32)
  (define-field-port
    num-msgs-in
    #f
    #f
    (property:)
    UnityEngine.Networking.ChannelBuffer
    numMsgsIn
    System.Int32)
  (define-field-port
    num-bytes-in
    #f
    #f
    (property:)
    UnityEngine.Networking.ChannelBuffer
    numBytesIn
    System.Int32)
  (define-field-port
    num-buffered-per-second
    #f
    #f
    (property:)
    UnityEngine.Networking.ChannelBuffer
    numBufferedPerSecond
    System.Int32)
  (define-field-port
    last-buffered-per-second
    #f
    #f
    (property:)
    UnityEngine.Networking.ChannelBuffer
    lastBufferedPerSecond
    System.Int32))
