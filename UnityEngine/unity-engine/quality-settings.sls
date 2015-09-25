(library (unity-engine quality-settings)
  (export new
          is?
          quality-settings?
          increase-level
          decrease-level
          set-quality-level
          get-quality-level
          names
          current-level-get
          current-level-set!
          current-level-update!
          pixel-light-count-get
          pixel-light-count-set!
          pixel-light-count-update!
          shadow-projection-get
          shadow-projection-set!
          shadow-projection-update!
          shadow-cascades-get
          shadow-cascades-set!
          shadow-cascades-update!
          shadow-distance-get
          shadow-distance-set!
          shadow-distance-update!
          shadow-cascade2-split-get
          shadow-cascade2-split-set!
          shadow-cascade2-split-update!
          shadow-cascade4-split-get
          shadow-cascade4-split-set!
          shadow-cascade4-split-update!
          master-texture-limit-get
          master-texture-limit-set!
          master-texture-limit-update!
          anisotropic-filtering-get
          anisotropic-filtering-set!
          anisotropic-filtering-update!
          lod-bias-get
          lod-bias-set!
          lod-bias-update!
          maximum-lodlevel-get
          maximum-lodlevel-set!
          maximum-lodlevel-update!
          particle-raycast-budget-get
          particle-raycast-budget-set!
          particle-raycast-budget-update!
          soft-vegetation?-get
          soft-vegetation?-set!
          soft-vegetation?-update!
          realtime-reflection-probes?-get
          realtime-reflection-probes?-set!
          realtime-reflection-probes?-update!
          billboards-face-camera-position?-get
          billboards-face-camera-position?-set!
          billboards-face-camera-position?-update!
          max-queued-frames-get
          max-queued-frames-set!
          max-queued-frames-update!
          v-sync-count-get
          v-sync-count-set!
          v-sync-count-update!
          anti-aliasing-get
          anti-aliasing-set!
          anti-aliasing-update!
          desired-color-space
          active-color-space
          blend-weights-get
          blend-weights-set!
          blend-weights-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.QualitySettings a ...)))))
  (define (is? a) (clr-is UnityEngine.QualitySettings a))
  (define (quality-settings? a) (clr-is UnityEngine.QualitySettings a))
  (define-method-port
    increase-level
    UnityEngine.QualitySettings
    IncreaseLevel
    (static: System.Void)
    (static: System.Void System.Boolean))
  (define-method-port
    decrease-level
    UnityEngine.QualitySettings
    DecreaseLevel
    (static: System.Void)
    (static: System.Void System.Boolean))
  (define-method-port
    set-quality-level
    UnityEngine.QualitySettings
    SetQualityLevel
    (static: System.Void System.Int32)
    (static: System.Void System.Int32 System.Boolean))
  (define-method-port
    get-quality-level
    UnityEngine.QualitySettings
    GetQualityLevel
    (static: System.Int32))
  (define-field-port
    names
    #f
    #f
    (static: property:)
    UnityEngine.QualitySettings
    names
    System.String[])
  (define-field-port
    current-level-get
    current-level-set!
    current-level-update!
    (static: property:)
    UnityEngine.QualitySettings
    currentLevel
    UnityEngine.QualityLevel)
  (define-field-port
    pixel-light-count-get
    pixel-light-count-set!
    pixel-light-count-update!
    (static: property:)
    UnityEngine.QualitySettings
    pixelLightCount
    System.Int32)
  (define-field-port
    shadow-projection-get
    shadow-projection-set!
    shadow-projection-update!
    (static: property:)
    UnityEngine.QualitySettings
    shadowProjection
    UnityEngine.ShadowProjection)
  (define-field-port
    shadow-cascades-get
    shadow-cascades-set!
    shadow-cascades-update!
    (static: property:)
    UnityEngine.QualitySettings
    shadowCascades
    System.Int32)
  (define-field-port
    shadow-distance-get
    shadow-distance-set!
    shadow-distance-update!
    (static: property:)
    UnityEngine.QualitySettings
    shadowDistance
    System.Single)
  (define-field-port
    shadow-cascade2-split-get
    shadow-cascade2-split-set!
    shadow-cascade2-split-update!
    (static: property:)
    UnityEngine.QualitySettings
    shadowCascade2Split
    System.Single)
  (define-field-port
    shadow-cascade4-split-get
    shadow-cascade4-split-set!
    shadow-cascade4-split-update!
    (static: property:)
    UnityEngine.QualitySettings
    shadowCascade4Split
    UnityEngine.Vector3)
  (define-field-port
    master-texture-limit-get
    master-texture-limit-set!
    master-texture-limit-update!
    (static: property:)
    UnityEngine.QualitySettings
    masterTextureLimit
    System.Int32)
  (define-field-port
    anisotropic-filtering-get
    anisotropic-filtering-set!
    anisotropic-filtering-update!
    (static: property:)
    UnityEngine.QualitySettings
    anisotropicFiltering
    UnityEngine.AnisotropicFiltering)
  (define-field-port
    lod-bias-get
    lod-bias-set!
    lod-bias-update!
    (static: property:)
    UnityEngine.QualitySettings
    lodBias
    System.Single)
  (define-field-port
    maximum-lodlevel-get
    maximum-lodlevel-set!
    maximum-lodlevel-update!
    (static: property:)
    UnityEngine.QualitySettings
    maximumLODLevel
    System.Int32)
  (define-field-port
    particle-raycast-budget-get
    particle-raycast-budget-set!
    particle-raycast-budget-update!
    (static: property:)
    UnityEngine.QualitySettings
    particleRaycastBudget
    System.Int32)
  (define-field-port
    soft-vegetation?-get
    soft-vegetation?-set!
    soft-vegetation?-update!
    (static: property:)
    UnityEngine.QualitySettings
    softVegetation
    System.Boolean)
  (define-field-port
    realtime-reflection-probes?-get
    realtime-reflection-probes?-set!
    realtime-reflection-probes?-update!
    (static: property:)
    UnityEngine.QualitySettings
    realtimeReflectionProbes
    System.Boolean)
  (define-field-port
    billboards-face-camera-position?-get
    billboards-face-camera-position?-set!
    billboards-face-camera-position?-update!
    (static: property:)
    UnityEngine.QualitySettings
    billboardsFaceCameraPosition
    System.Boolean)
  (define-field-port
    max-queued-frames-get
    max-queued-frames-set!
    max-queued-frames-update!
    (static: property:)
    UnityEngine.QualitySettings
    maxQueuedFrames
    System.Int32)
  (define-field-port
    v-sync-count-get
    v-sync-count-set!
    v-sync-count-update!
    (static: property:)
    UnityEngine.QualitySettings
    vSyncCount
    System.Int32)
  (define-field-port
    anti-aliasing-get
    anti-aliasing-set!
    anti-aliasing-update!
    (static: property:)
    UnityEngine.QualitySettings
    antiAliasing
    System.Int32)
  (define-field-port
    desired-color-space
    #f
    #f
    (static: property:)
    UnityEngine.QualitySettings
    desiredColorSpace
    UnityEngine.ColorSpace)
  (define-field-port
    active-color-space
    #f
    #f
    (static: property:)
    UnityEngine.QualitySettings
    activeColorSpace
    UnityEngine.ColorSpace)
  (define-field-port
    blend-weights-get
    blend-weights-set!
    blend-weights-update!
    (static: property:)
    UnityEngine.QualitySettings
    blendWeights
    UnityEngine.BlendWeights))
