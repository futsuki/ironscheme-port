(library (unity-engine networking sync-event-attribute)
  (export new
          is?
          sync-event-attribute?
          channel-get
          channel-set!
          channel-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.SyncEventAttribute a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.SyncEventAttribute a))
  (define (sync-event-attribute? a)
    (clr-is UnityEngine.Networking.SyncEventAttribute a))
  (define-field-port
    channel-get
    channel-set!
    channel-update!
    ()
    UnityEngine.Networking.SyncEventAttribute
    channel
    System.Int32))
