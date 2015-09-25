(library (unity-engine networking global-config)
  (export new
          is?
          global-config?
          thread-awake-timeout-get
          thread-awake-timeout-set!
          thread-awake-timeout-update!
          reactor-model-get
          reactor-model-set!
          reactor-model-update!
          reactor-maximum-received-messages-get
          reactor-maximum-received-messages-set!
          reactor-maximum-received-messages-update!
          reactor-maximum-sent-messages-get
          reactor-maximum-sent-messages-set!
          reactor-maximum-sent-messages-update!
          max-packet-size-get
          max-packet-size-set!
          max-packet-size-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.GlobalConfig a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.GlobalConfig a))
  (define (global-config? a)
    (clr-is UnityEngine.Networking.GlobalConfig a))
  (define-field-port
    thread-awake-timeout-get
    thread-awake-timeout-set!
    thread-awake-timeout-update!
    (property:)
    UnityEngine.Networking.GlobalConfig
    ThreadAwakeTimeout
    System.UInt32)
  (define-field-port
    reactor-model-get
    reactor-model-set!
    reactor-model-update!
    (property:)
    UnityEngine.Networking.GlobalConfig
    ReactorModel
    UnityEngine.Networking.ReactorModel)
  (define-field-port
    reactor-maximum-received-messages-get
    reactor-maximum-received-messages-set!
    reactor-maximum-received-messages-update!
    (property:)
    UnityEngine.Networking.GlobalConfig
    ReactorMaximumReceivedMessages
    System.UInt16)
  (define-field-port
    reactor-maximum-sent-messages-get
    reactor-maximum-sent-messages-set!
    reactor-maximum-sent-messages-update!
    (property:)
    UnityEngine.Networking.GlobalConfig
    ReactorMaximumSentMessages
    System.UInt16)
  (define-field-port
    max-packet-size-get
    max-packet-size-set!
    max-packet-size-update!
    (property:)
    UnityEngine.Networking.GlobalConfig
    MaxPacketSize
    System.UInt16))
