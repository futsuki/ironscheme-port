(library (unity-engine lightmap-settings)
  (export new
          is?
          lightmap-settings?
          lightmaps-get
          lightmaps-set!
          lightmaps-update!
          lightmaps-mode-legacy-get
          lightmaps-mode-legacy-set!
          lightmaps-mode-legacy-update!
          lightmaps-mode-get
          lightmaps-mode-set!
          lightmaps-mode-update!
          baked-color-space-get
          baked-color-space-set!
          baked-color-space-update!
          light-probes-get
          light-probes-set!
          light-probes-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.LightmapSettings a ...)))))
  (define (is? a) (clr-is UnityEngine.LightmapSettings a))
  (define (lightmap-settings? a)
    (clr-is UnityEngine.LightmapSettings a))
  (define-field-port
    lightmaps-get
    lightmaps-set!
    lightmaps-update!
    (static: property:)
    UnityEngine.LightmapSettings
    lightmaps
    UnityEngine.LightmapData[])
  (define-field-port
    lightmaps-mode-legacy-get
    lightmaps-mode-legacy-set!
    lightmaps-mode-legacy-update!
    (static: property:)
    UnityEngine.LightmapSettings
    lightmapsModeLegacy
    UnityEngine.LightmapsModeLegacy)
  (define-field-port
    lightmaps-mode-get
    lightmaps-mode-set!
    lightmaps-mode-update!
    (static: property:)
    UnityEngine.LightmapSettings
    lightmapsMode
    UnityEngine.LightmapsMode)
  (define-field-port
    baked-color-space-get
    baked-color-space-set!
    baked-color-space-update!
    (static: property:)
    UnityEngine.LightmapSettings
    bakedColorSpace
    UnityEngine.ColorSpace)
  (define-field-port
    light-probes-get
    light-probes-set!
    light-probes-update!
    (static: property:)
    UnityEngine.LightmapSettings
    lightProbes
    UnityEngine.LightProbes))
