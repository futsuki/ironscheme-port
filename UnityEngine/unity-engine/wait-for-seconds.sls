(library (unity-engine wait-for-seconds)
  (export new is? wait-for-seconds?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.WaitForSeconds a ...)))))
  (define (is? a) (clr-is UnityEngine.WaitForSeconds a))
  (define (wait-for-seconds? a) (clr-is UnityEngine.WaitForSeconds a)))
