(library (unity-engine behaviour)
  (export new
          is?
          behaviour?
          enabled?-get
          enabled?-set!
          enabled?-update!
          is-active-and-enabled?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Behaviour a ...)))))
  (define (is? a) (clr-is UnityEngine.Behaviour a))
  (define (behaviour? a) (clr-is UnityEngine.Behaviour a))
  (define-field-port
    enabled?-get
    enabled?-set!
    enabled?-update!
    (property:)
    UnityEngine.Behaviour
    enabled
    System.Boolean)
  (define-field-port
    is-active-and-enabled?
    #f
    #f
    (property:)
    UnityEngine.Behaviour
    isActiveAndEnabled
    System.Boolean))
