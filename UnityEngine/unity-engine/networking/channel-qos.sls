(library (unity-engine networking channel-qos)
  (export new is? channel-qos? qos)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.ChannelQOS a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.ChannelQOS a))
  (define (channel-qos? a) (clr-is UnityEngine.Networking.ChannelQOS a))
  (define-field-port
    qos
    #f
    #f
    (property:)
    UnityEngine.Networking.ChannelQOS
    QOS
    UnityEngine.Networking.QosType))
