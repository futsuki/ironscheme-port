(library (unity-engine material)
  (export new
          is?
          material?
          get-texture-offset
          enable-keyword
          get-vector
          set-pass?
          set-vector
          set-color
          has-property?
          create
          get-color
          set-texture-offset
          set-texture-scale
          get-int
          disable-keyword
          set-float
          get-texture
          get-float
          get-texture-scale
          set-buffer
          get-matrix
          get-tag
          set-matrix
          set-texture
          is-keyword-enabled?
          lerp
          set-override-tag
          set-int
          copy-properties-from-material
          shader-get
          shader-set!
          shader-update!
          color-get
          color-set!
          color-update!
          main-texture-get
          main-texture-set!
          main-texture-update!
          main-texture-offset-get
          main-texture-offset-set!
          main-texture-offset-update!
          main-texture-scale-get
          main-texture-scale-set!
          main-texture-scale-update!
          pass-count
          render-queue-get
          render-queue-set!
          render-queue-update!
          shader-keywords-get
          shader-keywords-set!
          shader-keywords-update!
          global-illumination-flags-get
          global-illumination-flags-set!
          global-illumination-flags-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Material a ...)))))
  (define (is? a) (clr-is UnityEngine.Material a))
  (define (material? a) (clr-is UnityEngine.Material a))
  (define-method-port
    get-texture-offset
    UnityEngine.Material
    GetTextureOffset
    (UnityEngine.Vector2 System.String))
  (define-method-port
    enable-keyword
    UnityEngine.Material
    EnableKeyword
    (System.Void System.String))
  (define-method-port
    get-vector
    UnityEngine.Material
    GetVector
    (UnityEngine.Vector4 System.Int32)
    (UnityEngine.Vector4 System.String))
  (define-method-port
    set-pass?
    UnityEngine.Material
    SetPass
    (System.Boolean System.Int32))
  (define-method-port
    set-vector
    UnityEngine.Material
    SetVector
    (System.Void System.Int32 UnityEngine.Vector4)
    (System.Void System.String UnityEngine.Vector4))
  (define-method-port
    set-color
    UnityEngine.Material
    SetColor
    (System.Void System.Int32 UnityEngine.Color)
    (System.Void System.String UnityEngine.Color))
  (define-method-port
    has-property?
    UnityEngine.Material
    HasProperty
    (System.Boolean System.Int32)
    (System.Boolean System.String))
  (define-method-port
    create
    UnityEngine.Material
    Create
    (static: UnityEngine.Material System.String))
  (define-method-port
    get-color
    UnityEngine.Material
    GetColor
    (UnityEngine.Color System.Int32)
    (UnityEngine.Color System.String))
  (define-method-port
    set-texture-offset
    UnityEngine.Material
    SetTextureOffset
    (System.Void System.String UnityEngine.Vector2))
  (define-method-port
    set-texture-scale
    UnityEngine.Material
    SetTextureScale
    (System.Void System.String UnityEngine.Vector2))
  (define-method-port
    get-int
    UnityEngine.Material
    GetInt
    (System.Int32 System.Int32)
    (System.Int32 System.String))
  (define-method-port
    disable-keyword
    UnityEngine.Material
    DisableKeyword
    (System.Void System.String))
  (define-method-port
    set-float
    UnityEngine.Material
    SetFloat
    (System.Void System.Int32 System.Single)
    (System.Void System.String System.Single))
  (define-method-port
    get-texture
    UnityEngine.Material
    GetTexture
    (UnityEngine.Texture System.Int32)
    (UnityEngine.Texture System.String))
  (define-method-port
    get-float
    UnityEngine.Material
    GetFloat
    (System.Single System.Int32)
    (System.Single System.String))
  (define-method-port
    get-texture-scale
    UnityEngine.Material
    GetTextureScale
    (UnityEngine.Vector2 System.String))
  (define-method-port
    set-buffer
    UnityEngine.Material
    SetBuffer
    (System.Void System.String UnityEngine.ComputeBuffer))
  (define-method-port
    get-matrix
    UnityEngine.Material
    GetMatrix
    (UnityEngine.Matrix4x4 System.Int32)
    (UnityEngine.Matrix4x4 System.String))
  (define-method-port
    get-tag
    UnityEngine.Material
    GetTag
    (System.String System.String System.Boolean)
    (System.String System.String System.Boolean System.String))
  (define-method-port
    set-matrix
    UnityEngine.Material
    SetMatrix
    (System.Void System.Int32 UnityEngine.Matrix4x4)
    (System.Void System.String UnityEngine.Matrix4x4))
  (define-method-port
    set-texture
    UnityEngine.Material
    SetTexture
    (System.Void System.Int32 UnityEngine.Texture)
    (System.Void System.String UnityEngine.Texture))
  (define-method-port
    is-keyword-enabled?
    UnityEngine.Material
    IsKeywordEnabled
    (System.Boolean System.String))
  (define-method-port
    lerp
    UnityEngine.Material
    Lerp
    (System.Void
      UnityEngine.Material
      UnityEngine.Material
      System.Single))
  (define-method-port
    set-override-tag
    UnityEngine.Material
    SetOverrideTag
    (System.Void System.String System.String))
  (define-method-port
    set-int
    UnityEngine.Material
    SetInt
    (System.Void System.Int32 System.Int32)
    (System.Void System.String System.Int32))
  (define-method-port
    copy-properties-from-material
    UnityEngine.Material
    CopyPropertiesFromMaterial
    (System.Void UnityEngine.Material))
  (define-field-port
    shader-get
    shader-set!
    shader-update!
    (property:)
    UnityEngine.Material
    shader
    UnityEngine.Shader)
  (define-field-port
    color-get
    color-set!
    color-update!
    (property:)
    UnityEngine.Material
    color
    UnityEngine.Color)
  (define-field-port
    main-texture-get
    main-texture-set!
    main-texture-update!
    (property:)
    UnityEngine.Material
    mainTexture
    UnityEngine.Texture)
  (define-field-port
    main-texture-offset-get
    main-texture-offset-set!
    main-texture-offset-update!
    (property:)
    UnityEngine.Material
    mainTextureOffset
    UnityEngine.Vector2)
  (define-field-port
    main-texture-scale-get
    main-texture-scale-set!
    main-texture-scale-update!
    (property:)
    UnityEngine.Material
    mainTextureScale
    UnityEngine.Vector2)
  (define-field-port
    pass-count
    #f
    #f
    (property:)
    UnityEngine.Material
    passCount
    System.Int32)
  (define-field-port
    render-queue-get
    render-queue-set!
    render-queue-update!
    (property:)
    UnityEngine.Material
    renderQueue
    System.Int32)
  (define-field-port
    shader-keywords-get
    shader-keywords-set!
    shader-keywords-update!
    (property:)
    UnityEngine.Material
    shaderKeywords
    System.String[])
  (define-field-port
    global-illumination-flags-get
    global-illumination-flags-set!
    global-illumination-flags-update!
    (property:)
    UnityEngine.Material
    globalIlluminationFlags
    UnityEngine.MaterialGlobalIlluminationFlags))
