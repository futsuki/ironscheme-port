(library (unity-engine networking network-message-handlers)
  (export new
          is?
          network-message-handlers?
          unregister-handler
          register-handler
          get-handlers)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.NetworkMessageHandlers
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.NetworkMessageHandlers a))
  (define (network-message-handlers? a)
    (clr-is UnityEngine.Networking.NetworkMessageHandlers a))
  (define-method-port
    unregister-handler
    UnityEngine.Networking.NetworkMessageHandlers
    UnregisterHandler
    (System.Void System.Int16))
  (define-method-port
    register-handler
    UnityEngine.Networking.NetworkMessageHandlers
    RegisterHandler
    (System.Void
      System.Int16
      UnityEngine.Networking.NetworkMessageDelegate))
  (define-method-port
    get-handlers
    UnityEngine.Networking.NetworkMessageHandlers
    GetHandlers
    ("System.Collections.Generic.Dictionary`2[[System.Int16, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089],[UnityEngine.Networking.NetworkMessageDelegate, UnityEngine.Networking, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]")))
