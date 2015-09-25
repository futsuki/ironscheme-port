(library (unity-engine ping)
  (export new is? ping? destroy-ping is-done? time ip)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Ping a ...)))))
  (define (is? a) (clr-is UnityEngine.Ping a))
  (define (ping? a) (clr-is UnityEngine.Ping a))
  (define-method-port
    destroy-ping
    UnityEngine.Ping
    DestroyPing
    (System.Void))
  (define-field-port
    is-done?
    #f
    #f
    (property:)
    UnityEngine.Ping
    isDone
    System.Boolean)
  (define-field-port
    time
    #f
    #f
    (property:)
    UnityEngine.Ping
    time
    System.Int32)
  (define-field-port
    ip
    #f
    #f
    (property:)
    UnityEngine.Ping
    ip
    System.String))
