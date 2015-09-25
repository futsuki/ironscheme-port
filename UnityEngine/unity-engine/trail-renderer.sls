(library (unity-engine trail-renderer)
  (export new
          is?
          trail-renderer?
          time-get
          time-set!
          time-update!
          start-width-get
          start-width-set!
          start-width-update!
          end-width-get
          end-width-set!
          end-width-update!
          autodestruct?-get
          autodestruct?-set!
          autodestruct?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.TrailRenderer a ...)))))
  (define (is? a) (clr-is UnityEngine.TrailRenderer a))
  (define (trail-renderer? a) (clr-is UnityEngine.TrailRenderer a))
  (define-field-port
    time-get
    time-set!
    time-update!
    (property:)
    UnityEngine.TrailRenderer
    time
    System.Single)
  (define-field-port
    start-width-get
    start-width-set!
    start-width-update!
    (property:)
    UnityEngine.TrailRenderer
    startWidth
    System.Single)
  (define-field-port
    end-width-get
    end-width-set!
    end-width-update!
    (property:)
    UnityEngine.TrailRenderer
    endWidth
    System.Single)
  (define-field-port
    autodestruct?-get
    autodestruct?-set!
    autodestruct?-update!
    (property:)
    UnityEngine.TrailRenderer
    autodestruct
    System.Boolean))
