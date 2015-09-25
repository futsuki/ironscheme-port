(library (unity-engine color-usage-attribute)
  (export new
          is?
          color-usage-attribute?
          show-alpha?
          hdr?
          min-brightness
          max-brightness
          min-exposure-value
          max-exposure-value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.ColorUsageAttribute a ...)))))
  (define (is? a) (clr-is UnityEngine.ColorUsageAttribute a))
  (define (color-usage-attribute? a)
    (clr-is UnityEngine.ColorUsageAttribute a))
  (define-field-port
    show-alpha?
    #f
    #f
    ()
    UnityEngine.ColorUsageAttribute
    showAlpha
    System.Boolean)
  (define-field-port
    hdr?
    #f
    #f
    ()
    UnityEngine.ColorUsageAttribute
    hdr
    System.Boolean)
  (define-field-port
    min-brightness
    #f
    #f
    ()
    UnityEngine.ColorUsageAttribute
    minBrightness
    System.Single)
  (define-field-port
    max-brightness
    #f
    #f
    ()
    UnityEngine.ColorUsageAttribute
    maxBrightness
    System.Single)
  (define-field-port
    min-exposure-value
    #f
    #f
    ()
    UnityEngine.ColorUsageAttribute
    minExposureValue
    System.Single)
  (define-field-port
    max-exposure-value
    #f
    #f
    ()
    UnityEngine.ColorUsageAttribute
    maxExposureValue
    System.Single))
