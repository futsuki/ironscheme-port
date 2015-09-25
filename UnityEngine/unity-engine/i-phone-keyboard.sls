(library (unity-engine i-phone-keyboard)
  (export new is? i-phone-keyboard?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.iPhoneKeyboard a ...)))))
  (define (is? a) (clr-is UnityEngine.iPhoneKeyboard a))
  (define (i-phone-keyboard? a) (clr-is UnityEngine.iPhoneKeyboard a)))
