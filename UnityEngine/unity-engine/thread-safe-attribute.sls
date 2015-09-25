(library (unity-engine thread-safe-attribute)
  (export new is? thread-safe-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.ThreadSafeAttribute a ...)))))
  (define (is? a) (clr-is UnityEngine.ThreadSafeAttribute a))
  (define (thread-safe-attribute? a)
    (clr-is UnityEngine.ThreadSafeAttribute a)))
