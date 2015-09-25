(library (unity-engine networking network-settings-attribute)
  (export new
          is?
          network-settings-attribute?
          channel-get
          channel-set!
          channel-update!
          send-interval-get
          send-interval-set!
          send-interval-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.NetworkSettingsAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.NetworkSettingsAttribute a))
  (define (network-settings-attribute? a)
    (clr-is UnityEngine.Networking.NetworkSettingsAttribute a))
  (define-field-port
    channel-get
    channel-set!
    channel-update!
    ()
    UnityEngine.Networking.NetworkSettingsAttribute
    channel
    System.Int32)
  (define-field-port
    send-interval-get
    send-interval-set!
    send-interval-update!
    ()
    UnityEngine.Networking.NetworkSettingsAttribute
    sendInterval
    System.Single))
