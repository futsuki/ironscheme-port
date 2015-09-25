(library (unity-engine render-settings)
  (export new
          is?
          render-settings?
          fog?-get
          fog?-set!
          fog?-update!
          fog-mode-get
          fog-mode-set!
          fog-mode-update!
          fog-color-get
          fog-color-set!
          fog-color-update!
          fog-density-get
          fog-density-set!
          fog-density-update!
          fog-start-distance-get
          fog-start-distance-set!
          fog-start-distance-update!
          fog-end-distance-get
          fog-end-distance-set!
          fog-end-distance-update!
          ambient-mode-get
          ambient-mode-set!
          ambient-mode-update!
          ambient-sky-color-get
          ambient-sky-color-set!
          ambient-sky-color-update!
          ambient-equator-color-get
          ambient-equator-color-set!
          ambient-equator-color-update!
          ambient-ground-color-get
          ambient-ground-color-set!
          ambient-ground-color-update!
          ambient-light-get
          ambient-light-set!
          ambient-light-update!
          ambient-skybox-amount-get
          ambient-skybox-amount-set!
          ambient-skybox-amount-update!
          ambient-intensity-get
          ambient-intensity-set!
          ambient-intensity-update!
          ambient-probe-get
          ambient-probe-set!
          ambient-probe-update!
          reflection-intensity-get
          reflection-intensity-set!
          reflection-intensity-update!
          reflection-bounces-get
          reflection-bounces-set!
          reflection-bounces-update!
          halo-strength-get
          halo-strength-set!
          halo-strength-update!
          flare-strength-get
          flare-strength-set!
          flare-strength-update!
          flare-fade-speed-get
          flare-fade-speed-set!
          flare-fade-speed-update!
          skybox-get
          skybox-set!
          skybox-update!
          default-reflection-mode-get
          default-reflection-mode-set!
          default-reflection-mode-update!
          default-reflection-resolution-get
          default-reflection-resolution-set!
          default-reflection-resolution-update!
          custom-reflection-get
          custom-reflection-set!
          custom-reflection-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.RenderSettings a ...)))))
  (define (is? a) (clr-is UnityEngine.RenderSettings a))
  (define (render-settings? a) (clr-is UnityEngine.RenderSettings a))
  (define-field-port
    fog?-get
    fog?-set!
    fog?-update!
    (static: property:)
    UnityEngine.RenderSettings
    fog
    System.Boolean)
  (define-field-port
    fog-mode-get
    fog-mode-set!
    fog-mode-update!
    (static: property:)
    UnityEngine.RenderSettings
    fogMode
    UnityEngine.FogMode)
  (define-field-port
    fog-color-get
    fog-color-set!
    fog-color-update!
    (static: property:)
    UnityEngine.RenderSettings
    fogColor
    UnityEngine.Color)
  (define-field-port
    fog-density-get
    fog-density-set!
    fog-density-update!
    (static: property:)
    UnityEngine.RenderSettings
    fogDensity
    System.Single)
  (define-field-port
    fog-start-distance-get
    fog-start-distance-set!
    fog-start-distance-update!
    (static: property:)
    UnityEngine.RenderSettings
    fogStartDistance
    System.Single)
  (define-field-port
    fog-end-distance-get
    fog-end-distance-set!
    fog-end-distance-update!
    (static: property:)
    UnityEngine.RenderSettings
    fogEndDistance
    System.Single)
  (define-field-port
    ambient-mode-get
    ambient-mode-set!
    ambient-mode-update!
    (static: property:)
    UnityEngine.RenderSettings
    ambientMode
    UnityEngine.Rendering.AmbientMode)
  (define-field-port
    ambient-sky-color-get
    ambient-sky-color-set!
    ambient-sky-color-update!
    (static: property:)
    UnityEngine.RenderSettings
    ambientSkyColor
    UnityEngine.Color)
  (define-field-port
    ambient-equator-color-get
    ambient-equator-color-set!
    ambient-equator-color-update!
    (static: property:)
    UnityEngine.RenderSettings
    ambientEquatorColor
    UnityEngine.Color)
  (define-field-port
    ambient-ground-color-get
    ambient-ground-color-set!
    ambient-ground-color-update!
    (static: property:)
    UnityEngine.RenderSettings
    ambientGroundColor
    UnityEngine.Color)
  (define-field-port
    ambient-light-get
    ambient-light-set!
    ambient-light-update!
    (static: property:)
    UnityEngine.RenderSettings
    ambientLight
    UnityEngine.Color)
  (define-field-port
    ambient-skybox-amount-get
    ambient-skybox-amount-set!
    ambient-skybox-amount-update!
    (static: property:)
    UnityEngine.RenderSettings
    ambientSkyboxAmount
    System.Single)
  (define-field-port
    ambient-intensity-get
    ambient-intensity-set!
    ambient-intensity-update!
    (static: property:)
    UnityEngine.RenderSettings
    ambientIntensity
    System.Single)
  (define-field-port
    ambient-probe-get
    ambient-probe-set!
    ambient-probe-update!
    (static: property:)
    UnityEngine.RenderSettings
    ambientProbe
    UnityEngine.Rendering.SphericalHarmonicsL2)
  (define-field-port
    reflection-intensity-get
    reflection-intensity-set!
    reflection-intensity-update!
    (static: property:)
    UnityEngine.RenderSettings
    reflectionIntensity
    System.Single)
  (define-field-port
    reflection-bounces-get
    reflection-bounces-set!
    reflection-bounces-update!
    (static: property:)
    UnityEngine.RenderSettings
    reflectionBounces
    System.Int32)
  (define-field-port
    halo-strength-get
    halo-strength-set!
    halo-strength-update!
    (static: property:)
    UnityEngine.RenderSettings
    haloStrength
    System.Single)
  (define-field-port
    flare-strength-get
    flare-strength-set!
    flare-strength-update!
    (static: property:)
    UnityEngine.RenderSettings
    flareStrength
    System.Single)
  (define-field-port
    flare-fade-speed-get
    flare-fade-speed-set!
    flare-fade-speed-update!
    (static: property:)
    UnityEngine.RenderSettings
    flareFadeSpeed
    System.Single)
  (define-field-port
    skybox-get
    skybox-set!
    skybox-update!
    (static: property:)
    UnityEngine.RenderSettings
    skybox
    UnityEngine.Material)
  (define-field-port
    default-reflection-mode-get
    default-reflection-mode-set!
    default-reflection-mode-update!
    (static: property:)
    UnityEngine.RenderSettings
    defaultReflectionMode
    UnityEngine.Rendering.DefaultReflectionMode)
  (define-field-port
    default-reflection-resolution-get
    default-reflection-resolution-set!
    default-reflection-resolution-update!
    (static: property:)
    UnityEngine.RenderSettings
    defaultReflectionResolution
    System.Int32)
  (define-field-port
    custom-reflection-get
    custom-reflection-set!
    custom-reflection-update!
    (static: property:)
    UnityEngine.RenderSettings
    customReflection
    UnityEngine.Cubemap))
