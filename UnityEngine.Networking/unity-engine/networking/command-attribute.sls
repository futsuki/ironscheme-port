(library (unity-engine networking command-attribute)
  (export new
          is?
          command-attribute?
          channel-get
          channel-set!
          channel-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.CommandAttribute a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.CommandAttribute a))
  (define (command-attribute? a)
    (clr-is UnityEngine.Networking.CommandAttribute a))
  (define-field-port
    channel-get
    channel-set!
    channel-update!
    ()
    UnityEngine.Networking.CommandAttribute
    channel
    System.Int32))
