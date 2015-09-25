(library (unity-engine light-probes)
  (export new
          is?
          light-probes?
          get-interpolated-light-probe
          get-interpolated-probe
          positions
          baked-probes-get
          baked-probes-set!
          baked-probes-update!
          count
          cell-count
          coefficients-get
          coefficients-set!
          coefficients-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.LightProbes a ...)))))
  (define (is? a) (clr-is UnityEngine.LightProbes a))
  (define (light-probes? a) (clr-is UnityEngine.LightProbes a))
  (define-method-port
    get-interpolated-light-probe
    UnityEngine.LightProbes
    GetInterpolatedLightProbe
    (System.Void
      UnityEngine.Vector3
      UnityEngine.Renderer
      System.Single[]))
  (define-method-port
    get-interpolated-probe
    UnityEngine.LightProbes
    GetInterpolatedProbe
    (static:
      System.Void
      UnityEngine.Vector3
      UnityEngine.Renderer
      UnityEngine.Rendering.SphericalHarmonicsL2&))
  (define-field-port
    positions
    #f
    #f
    (property:)
    UnityEngine.LightProbes
    positions
    UnityEngine.Vector3[])
  (define-field-port
    baked-probes-get
    baked-probes-set!
    baked-probes-update!
    (property:)
    UnityEngine.LightProbes
    bakedProbes
    UnityEngine.Rendering.SphericalHarmonicsL2[])
  (define-field-port
    count
    #f
    #f
    (property:)
    UnityEngine.LightProbes
    count
    System.Int32)
  (define-field-port
    cell-count
    #f
    #f
    (property:)
    UnityEngine.LightProbes
    cellCount
    System.Int32)
  (define-field-port
    coefficients-get
    coefficients-set!
    coefficients-update!
    (property:)
    UnityEngine.LightProbes
    coefficients
    System.Single[]))
