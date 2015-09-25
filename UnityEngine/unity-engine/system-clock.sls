(library (unity-engine system-clock)
  (export new
          is?
          system-clock?
          to-unix-time-milliseconds
          to-unix-time-seconds
          now)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.SystemClock a ...)))))
  (define (is? a) (clr-is UnityEngine.SystemClock a))
  (define (system-clock? a) (clr-is UnityEngine.SystemClock a))
  (define-method-port
    to-unix-time-milliseconds
    UnityEngine.SystemClock
    ToUnixTimeMilliseconds
    (static: System.Int64 System.DateTime))
  (define-method-port
    to-unix-time-seconds
    UnityEngine.SystemClock
    ToUnixTimeSeconds
    (static: System.Int64 System.DateTime))
  (define-field-port
    now
    #f
    #f
    (static: property:)
    UnityEngine.SystemClock
    now
    System.DateTime))
