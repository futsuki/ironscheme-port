(library (unity-engine tooltip-attribute)
  (export new is? tooltip-attribute? tooltip)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.TooltipAttribute a ...)))))
  (define (is? a) (clr-is UnityEngine.TooltipAttribute a))
  (define (tooltip-attribute? a)
    (clr-is UnityEngine.TooltipAttribute a))
  (define-field-port
    tooltip
    #f
    #f
    ()
    UnityEngine.TooltipAttribute
    tooltip
    System.String))
