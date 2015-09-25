(library (unity-engine texture)
  (export new
          is?
          texture?
          set-global-anisotropic-filtering-limits
          get-native-texture-ptr
          get-native-texture-id
          master-texture-limit-get
          master-texture-limit-set!
          master-texture-limit-update!
          anisotropic-filtering-get
          anisotropic-filtering-set!
          anisotropic-filtering-update!
          width-get
          width-set!
          width-update!
          height-get
          height-set!
          height-update!
          filter-mode-get
          filter-mode-set!
          filter-mode-update!
          aniso-level-get
          aniso-level-set!
          aniso-level-update!
          wrap-mode-get
          wrap-mode-set!
          wrap-mode-update!
          mip-map-bias-get
          mip-map-bias-set!
          mip-map-bias-update!
          texel-size)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Texture a ...)))))
  (define (is? a) (clr-is UnityEngine.Texture a))
  (define (texture? a) (clr-is UnityEngine.Texture a))
  (define-method-port
    set-global-anisotropic-filtering-limits
    UnityEngine.Texture
    SetGlobalAnisotropicFilteringLimits
    (static: System.Void System.Int32 System.Int32))
  (define-method-port
    get-native-texture-ptr
    UnityEngine.Texture
    GetNativeTexturePtr
    (System.IntPtr))
  (define-method-port
    get-native-texture-id
    UnityEngine.Texture
    GetNativeTextureID
    (System.Int32))
  (define-field-port
    master-texture-limit-get
    master-texture-limit-set!
    master-texture-limit-update!
    (static: property:)
    UnityEngine.Texture
    masterTextureLimit
    System.Int32)
  (define-field-port
    anisotropic-filtering-get
    anisotropic-filtering-set!
    anisotropic-filtering-update!
    (static: property:)
    UnityEngine.Texture
    anisotropicFiltering
    UnityEngine.AnisotropicFiltering)
  (define-field-port
    width-get
    width-set!
    width-update!
    (property:)
    UnityEngine.Texture
    width
    System.Int32)
  (define-field-port
    height-get
    height-set!
    height-update!
    (property:)
    UnityEngine.Texture
    height
    System.Int32)
  (define-field-port
    filter-mode-get
    filter-mode-set!
    filter-mode-update!
    (property:)
    UnityEngine.Texture
    filterMode
    UnityEngine.FilterMode)
  (define-field-port
    aniso-level-get
    aniso-level-set!
    aniso-level-update!
    (property:)
    UnityEngine.Texture
    anisoLevel
    System.Int32)
  (define-field-port
    wrap-mode-get
    wrap-mode-set!
    wrap-mode-update!
    (property:)
    UnityEngine.Texture
    wrapMode
    UnityEngine.TextureWrapMode)
  (define-field-port
    mip-map-bias-get
    mip-map-bias-set!
    mip-map-bias-update!
    (property:)
    UnityEngine.Texture
    mipMapBias
    System.Single)
  (define-field-port
    texel-size
    #f
    #f
    (property:)
    UnityEngine.Texture
    texelSize
    UnityEngine.Vector2))
