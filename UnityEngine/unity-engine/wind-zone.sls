(library (unity-engine wind-zone)
  (export new
          is?
          wind-zone?
          mode-get
          mode-set!
          mode-update!
          radius-get
          radius-set!
          radius-update!
          wind-main-get
          wind-main-set!
          wind-main-update!
          wind-turbulence-get
          wind-turbulence-set!
          wind-turbulence-update!
          wind-pulse-magnitude-get
          wind-pulse-magnitude-set!
          wind-pulse-magnitude-update!
          wind-pulse-frequency-get
          wind-pulse-frequency-set!
          wind-pulse-frequency-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.WindZone a ...)))))
  (define (is? a) (clr-is UnityEngine.WindZone a))
  (define (wind-zone? a) (clr-is UnityEngine.WindZone a))
  (define-field-port
    mode-get
    mode-set!
    mode-update!
    (property:)
    UnityEngine.WindZone
    mode
    UnityEngine.WindZoneMode)
  (define-field-port
    radius-get
    radius-set!
    radius-update!
    (property:)
    UnityEngine.WindZone
    radius
    System.Single)
  (define-field-port
    wind-main-get
    wind-main-set!
    wind-main-update!
    (property:)
    UnityEngine.WindZone
    windMain
    System.Single)
  (define-field-port
    wind-turbulence-get
    wind-turbulence-set!
    wind-turbulence-update!
    (property:)
    UnityEngine.WindZone
    windTurbulence
    System.Single)
  (define-field-port
    wind-pulse-magnitude-get
    wind-pulse-magnitude-set!
    wind-pulse-magnitude-update!
    (property:)
    UnityEngine.WindZone
    windPulseMagnitude
    System.Single)
  (define-field-port
    wind-pulse-frequency-get
    wind-pulse-frequency-set!
    wind-pulse-frequency-update!
    (property:)
    UnityEngine.WindZone
    windPulseFrequency
    System.Single))
