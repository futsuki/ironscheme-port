(library (unity-engine range-attribute)
  (export new is? range-attribute? min max)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.RangeAttribute a ...)))))
  (define (is? a) (clr-is UnityEngine.RangeAttribute a))
  (define (range-attribute? a) (clr-is UnityEngine.RangeAttribute a))
  (define-field-port
    min
    #f
    #f
    ()
    UnityEngine.RangeAttribute
    min
    System.Single)
  (define-field-port
    max
    #f
    #f
    ()
    UnityEngine.RangeAttribute
    max
    System.Single))
