(library (unity-engine serialize-field)
  (export new is? serialize-field?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.SerializeField a ...)))))
  (define (is? a) (clr-is UnityEngine.SerializeField a))
  (define (serialize-field? a) (clr-is UnityEngine.SerializeField a)))
