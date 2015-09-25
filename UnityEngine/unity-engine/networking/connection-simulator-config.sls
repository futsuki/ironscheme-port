(library (unity-engine networking connection-simulator-config)
  (export new is? connection-simulator-config? dispose)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.ConnectionSimulatorConfig
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.ConnectionSimulatorConfig a))
  (define (connection-simulator-config? a)
    (clr-is UnityEngine.Networking.ConnectionSimulatorConfig a))
  (define-method-port
    dispose
    UnityEngine.Networking.ConnectionSimulatorConfig
    Dispose
    (System.Void)))
