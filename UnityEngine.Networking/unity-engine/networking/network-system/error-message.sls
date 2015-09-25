(library (unity-engine networking network-system error-message)
  (export new
          is?
          error-message?
          deserialize
          serialize
          error-code-get
          error-code-set!
          error-code-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.NetworkSystem.ErrorMessage
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.NetworkSystem.ErrorMessage a))
  (define (error-message? a)
    (clr-is UnityEngine.Networking.NetworkSystem.ErrorMessage a))
  (define-method-port
    deserialize
    UnityEngine.Networking.NetworkSystem.ErrorMessage
    Deserialize
    (System.Void UnityEngine.Networking.NetworkReader))
  (define-method-port
    serialize
    UnityEngine.Networking.NetworkSystem.ErrorMessage
    Serialize
    (System.Void UnityEngine.Networking.NetworkWriter))
  (define-field-port
    error-code-get
    error-code-set!
    error-code-update!
    ()
    UnityEngine.Networking.NetworkSystem.ErrorMessage
    errorCode
    System.Int32))
