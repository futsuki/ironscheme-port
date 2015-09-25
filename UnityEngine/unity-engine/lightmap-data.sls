(library (unity-engine lightmap-data)
  (export new
          is?
          lightmap-data?
          lightmap-far-get
          lightmap-far-set!
          lightmap-far-update!
          lightmap-get
          lightmap-set!
          lightmap-update!
          lightmap-near-get
          lightmap-near-set!
          lightmap-near-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.LightmapData a ...)))))
  (define (is? a) (clr-is UnityEngine.LightmapData a))
  (define (lightmap-data? a) (clr-is UnityEngine.LightmapData a))
  (define-field-port
    lightmap-far-get
    lightmap-far-set!
    lightmap-far-update!
    (property:)
    UnityEngine.LightmapData
    lightmapFar
    UnityEngine.Texture2D)
  (define-field-port
    lightmap-get
    lightmap-set!
    lightmap-update!
    (property:)
    UnityEngine.LightmapData
    lightmap
    UnityEngine.Texture2D)
  (define-field-port
    lightmap-near-get
    lightmap-near-set!
    lightmap-near-update!
    (property:)
    UnityEngine.LightmapData
    lightmapNear
    UnityEngine.Texture2D))
