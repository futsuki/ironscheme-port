(library (unity-engine i-phone-input)
  (export new is? i-phone-input? orientation)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.iPhoneInput a ...)))))
  (define (is? a) (clr-is UnityEngine.iPhoneInput a))
  (define (i-phone-input? a) (clr-is UnityEngine.iPhoneInput a))
  (define-field-port
    orientation
    #f
    #f
    (static: property:)
    UnityEngine.iPhoneInput
    orientation
    UnityEngine.iPhoneOrientation))
