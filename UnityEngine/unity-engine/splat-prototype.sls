(library (unity-engine splat-prototype)
  (export new
          is?
          splat-prototype?
          texture-get
          texture-set!
          texture-update!
          normal-map-get
          normal-map-set!
          normal-map-update!
          tile-size-get
          tile-size-set!
          tile-size-update!
          tile-offset-get
          tile-offset-set!
          tile-offset-update!
          specular-get
          specular-set!
          specular-update!
          metallic-get
          metallic-set!
          metallic-update!
          smoothness-get
          smoothness-set!
          smoothness-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.SplatPrototype a ...)))))
  (define (is? a) (clr-is UnityEngine.SplatPrototype a))
  (define (splat-prototype? a) (clr-is UnityEngine.SplatPrototype a))
  (define-field-port
    texture-get
    texture-set!
    texture-update!
    (property:)
    UnityEngine.SplatPrototype
    texture
    UnityEngine.Texture2D)
  (define-field-port
    normal-map-get
    normal-map-set!
    normal-map-update!
    (property:)
    UnityEngine.SplatPrototype
    normalMap
    UnityEngine.Texture2D)
  (define-field-port
    tile-size-get
    tile-size-set!
    tile-size-update!
    (property:)
    UnityEngine.SplatPrototype
    tileSize
    UnityEngine.Vector2)
  (define-field-port
    tile-offset-get
    tile-offset-set!
    tile-offset-update!
    (property:)
    UnityEngine.SplatPrototype
    tileOffset
    UnityEngine.Vector2)
  (define-field-port
    specular-get
    specular-set!
    specular-update!
    (property:)
    UnityEngine.SplatPrototype
    specular
    UnityEngine.Color)
  (define-field-port
    metallic-get
    metallic-set!
    metallic-update!
    (property:)
    UnityEngine.SplatPrototype
    metallic
    System.Single)
  (define-field-port
    smoothness-get
    smoothness-set!
    smoothness-update!
    (property:)
    UnityEngine.SplatPrototype
    smoothness
    System.Single))
