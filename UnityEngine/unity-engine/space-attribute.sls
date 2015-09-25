(library (unity-engine space-attribute)
  (export new is? space-attribute? height)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.SpaceAttribute a ...)))))
  (define (is? a) (clr-is UnityEngine.SpaceAttribute a))
  (define (space-attribute? a) (clr-is UnityEngine.SpaceAttribute a))
  (define-field-port
    height
    #f
    #f
    ()
    UnityEngine.SpaceAttribute
    height
    System.Single))
