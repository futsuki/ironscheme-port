(library (unity-engine procedural-material)
  (export is?
          procedural-material?
          set-procedural-texture
          get-procedural-enum
          get-procedural-float
          stop-rebuilds
          get-procedural-vector
          set-procedural-vector
          cache-procedural-property
          set-procedural-enum
          get-procedural-property-descriptions
          has-procedural-property?
          get-generated-texture
          clear-cache
          set-procedural-color
          set-procedural-boolean
          get-procedural-boolean?
          get-procedural-texture
          get-generated-textures
          is-procedural-property-cached?
          set-procedural-float
          get-procedural-color
          rebuild-textures-immediately
          rebuild-textures
          cache-size-get
          cache-size-set!
          cache-size-update!
          animation-update-rate-get
          animation-update-rate-set!
          animation-update-rate-update!
          is-processing?
          is-cached-data-available?
          is-load-time-generated?-get
          is-load-time-generated?-set!
          is-load-time-generated?-update!
          loading-behavior
          is-supported?
          substance-processor-usage-get
          substance-processor-usage-set!
          substance-processor-usage-update!
          preset-get
          preset-set!
          preset-update!
          is-readable?-get
          is-readable?-set!
          is-readable?-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.ProceduralMaterial a))
  (define (procedural-material? a)
    (clr-is UnityEngine.ProceduralMaterial a))
  (define-method-port
    set-procedural-texture
    UnityEngine.ProceduralMaterial
    SetProceduralTexture
    (System.Void System.String UnityEngine.Texture2D))
  (define-method-port
    get-procedural-enum
    UnityEngine.ProceduralMaterial
    GetProceduralEnum
    (System.Int32 System.String))
  (define-method-port
    get-procedural-float
    UnityEngine.ProceduralMaterial
    GetProceduralFloat
    (System.Single System.String))
  (define-method-port
    stop-rebuilds
    UnityEngine.ProceduralMaterial
    StopRebuilds
    (static: System.Void))
  (define-method-port
    get-procedural-vector
    UnityEngine.ProceduralMaterial
    GetProceduralVector
    (UnityEngine.Vector4 System.String))
  (define-method-port
    set-procedural-vector
    UnityEngine.ProceduralMaterial
    SetProceduralVector
    (System.Void System.String UnityEngine.Vector4))
  (define-method-port
    cache-procedural-property
    UnityEngine.ProceduralMaterial
    CacheProceduralProperty
    (System.Void System.String System.Boolean))
  (define-method-port
    set-procedural-enum
    UnityEngine.ProceduralMaterial
    SetProceduralEnum
    (System.Void System.String System.Int32))
  (define-method-port
    get-procedural-property-descriptions
    UnityEngine.ProceduralMaterial
    GetProceduralPropertyDescriptions
    (UnityEngine.ProceduralPropertyDescription[]))
  (define-method-port
    has-procedural-property?
    UnityEngine.ProceduralMaterial
    HasProceduralProperty
    (System.Boolean System.String))
  (define-method-port
    get-generated-texture
    UnityEngine.ProceduralMaterial
    GetGeneratedTexture
    (UnityEngine.ProceduralTexture System.String))
  (define-method-port
    clear-cache
    UnityEngine.ProceduralMaterial
    ClearCache
    (System.Void))
  (define-method-port
    set-procedural-color
    UnityEngine.ProceduralMaterial
    SetProceduralColor
    (System.Void System.String UnityEngine.Color))
  (define-method-port
    set-procedural-boolean
    UnityEngine.ProceduralMaterial
    SetProceduralBoolean
    (System.Void System.String System.Boolean))
  (define-method-port
    get-procedural-boolean?
    UnityEngine.ProceduralMaterial
    GetProceduralBoolean
    (System.Boolean System.String))
  (define-method-port
    get-procedural-texture
    UnityEngine.ProceduralMaterial
    GetProceduralTexture
    (UnityEngine.Texture2D System.String))
  (define-method-port
    get-generated-textures
    UnityEngine.ProceduralMaterial
    GetGeneratedTextures
    (UnityEngine.Texture[]))
  (define-method-port
    is-procedural-property-cached?
    UnityEngine.ProceduralMaterial
    IsProceduralPropertyCached
    (System.Boolean System.String))
  (define-method-port
    set-procedural-float
    UnityEngine.ProceduralMaterial
    SetProceduralFloat
    (System.Void System.String System.Single))
  (define-method-port
    get-procedural-color
    UnityEngine.ProceduralMaterial
    GetProceduralColor
    (UnityEngine.Color System.String))
  (define-method-port
    rebuild-textures-immediately
    UnityEngine.ProceduralMaterial
    RebuildTexturesImmediately
    (System.Void))
  (define-method-port
    rebuild-textures
    UnityEngine.ProceduralMaterial
    RebuildTextures
    (System.Void))
  (define-field-port
    cache-size-get
    cache-size-set!
    cache-size-update!
    (property:)
    UnityEngine.ProceduralMaterial
    cacheSize
    UnityEngine.ProceduralCacheSize)
  (define-field-port
    animation-update-rate-get
    animation-update-rate-set!
    animation-update-rate-update!
    (property:)
    UnityEngine.ProceduralMaterial
    animationUpdateRate
    System.Int32)
  (define-field-port
    is-processing?
    #f
    #f
    (property:)
    UnityEngine.ProceduralMaterial
    isProcessing
    System.Boolean)
  (define-field-port
    is-cached-data-available?
    #f
    #f
    (property:)
    UnityEngine.ProceduralMaterial
    isCachedDataAvailable
    System.Boolean)
  (define-field-port
    is-load-time-generated?-get
    is-load-time-generated?-set!
    is-load-time-generated?-update!
    (property:)
    UnityEngine.ProceduralMaterial
    isLoadTimeGenerated
    System.Boolean)
  (define-field-port
    loading-behavior
    #f
    #f
    (property:)
    UnityEngine.ProceduralMaterial
    loadingBehavior
    UnityEngine.ProceduralLoadingBehavior)
  (define-field-port
    is-supported?
    #f
    #f
    (static: property:)
    UnityEngine.ProceduralMaterial
    isSupported
    System.Boolean)
  (define-field-port
    substance-processor-usage-get
    substance-processor-usage-set!
    substance-processor-usage-update!
    (static: property:)
    UnityEngine.ProceduralMaterial
    substanceProcessorUsage
    UnityEngine.ProceduralProcessorUsage)
  (define-field-port
    preset-get
    preset-set!
    preset-update!
    (property:)
    UnityEngine.ProceduralMaterial
    preset
    System.String)
  (define-field-port
    is-readable?-get
    is-readable?-set!
    is-readable?-update!
    (property:)
    UnityEngine.ProceduralMaterial
    isReadable
    System.Boolean))
