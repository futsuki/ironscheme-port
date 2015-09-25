(library (unity-engine light-probe-group)
  (export new
          is?
          light-probe-group?
          probe-positions-get
          probe-positions-set!
          probe-positions-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.LightProbeGroup a ...)))))
  (define (is? a) (clr-is UnityEngine.LightProbeGroup a))
  (define (light-probe-group? a) (clr-is UnityEngine.LightProbeGroup a))
  (define-field-port
    probe-positions-get
    probe-positions-set!
    probe-positions-update!
    (property:)
    UnityEngine.LightProbeGroup
    probePositions
    UnityEngine.Vector3[]))
