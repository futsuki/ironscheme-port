(library (unity-engine multiline-attribute)
  (export new is? multiline-attribute? lines)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.MultilineAttribute a ...)))))
  (define (is? a) (clr-is UnityEngine.MultilineAttribute a))
  (define (multiline-attribute? a)
    (clr-is UnityEngine.MultilineAttribute a))
  (define-field-port
    lines
    #f
    #f
    ()
    UnityEngine.MultilineAttribute
    lines
    System.Int32))
