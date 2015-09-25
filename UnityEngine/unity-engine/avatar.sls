(library (unity-engine avatar)
  (export new is? avatar? is-valid? is-human?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Avatar a ...)))))
  (define (is? a) (clr-is UnityEngine.Avatar a))
  (define (avatar? a) (clr-is UnityEngine.Avatar a))
  (define-field-port
    is-valid?
    #f
    #f
    (property:)
    UnityEngine.Avatar
    isValid
    System.Boolean)
  (define-field-port
    is-human?
    #f
    #f
    (property:)
    UnityEngine.Avatar
    isHuman
    System.Boolean))
