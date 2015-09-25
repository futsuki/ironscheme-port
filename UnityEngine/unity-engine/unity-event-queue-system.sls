(library (unity-engine unity-event-queue-system)
  (export new
          is?
          unity-event-queue-system?
          get-global-event-queue
          generate-event-id-for-payload)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.UnityEventQueueSystem a ...)))))
  (define (is? a) (clr-is UnityEngine.UnityEventQueueSystem a))
  (define (unity-event-queue-system? a)
    (clr-is UnityEngine.UnityEventQueueSystem a))
  (define-method-port
    get-global-event-queue
    UnityEngine.UnityEventQueueSystem
    GetGlobalEventQueue
    (static: System.IntPtr))
  (define-method-port
    generate-event-id-for-payload
    UnityEngine.UnityEventQueueSystem
    GenerateEventIdForPayload
    (static: System.String System.String)))
