(library (unity-engine i-phone)
  (export new is? i-phone?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.iPhone a ...)))))
  (define (is? a) (clr-is UnityEngine.iPhone a))
  (define (i-phone? a) (clr-is UnityEngine.iPhone a)))
