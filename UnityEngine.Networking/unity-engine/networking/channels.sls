(library (unity-engine networking channels)
  (export new is? channels? default-reliable default-unreliable)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Networking.Channels a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.Channels a))
  (define (channels? a) (clr-is UnityEngine.Networking.Channels a))
  (define-field-port
    default-reliable
    #f
    #f
    (static:)
    UnityEngine.Networking.Channels
    DefaultReliable
    System.Int32)
  (define-field-port
    default-unreliable
    #f
    #f
    (static:)
    UnityEngine.Networking.Channels
    DefaultUnreliable
    System.Int32))
