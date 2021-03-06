(library (unity-engine render-texture)
  (export new
          is?
          render-texture?
          release-temporary
          supports-stencil?
          get-temporary
          is-created?
          set-border-color
          create?
          release
          set-global-shader-property
          get-texel-offset
          mark-restore-expected
          discard-contents
          width-get
          width-set!
          width-update!
          height-get
          height-set!
          height-update!
          depth-get
          depth-set!
          depth-update!
          is-power-of-two?-get
          is-power-of-two?-set!
          is-power-of-two?-update!
          s-rgb?
          format-get
          format-set!
          format-update!
          use-mip-map?-get
          use-mip-map?-set!
          use-mip-map?-update!
          generate-mips?-get
          generate-mips?-set!
          generate-mips?-update!
          is-cubemap?-get
          is-cubemap?-set!
          is-cubemap?-update!
          is-volume?-get
          is-volume?-set!
          is-volume?-update!
          volume-depth-get
          volume-depth-set!
          volume-depth-update!
          anti-aliasing-get
          anti-aliasing-set!
          anti-aliasing-update!
          enable-random-write?-get
          enable-random-write?-set!
          enable-random-write?-update!
          color-buffer
          depth-buffer
          active-get
          active-set!
          active-update!
          enabled?-get
          enabled?-set!
          enabled?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.RenderTexture a ...)))))
  (define (is? a) (clr-is UnityEngine.RenderTexture a))
  (define (render-texture? a) (clr-is UnityEngine.RenderTexture a))
  (define-method-port
    release-temporary
    UnityEngine.RenderTexture
    ReleaseTemporary
    (static: System.Void UnityEngine.RenderTexture))
  (define-method-port
    supports-stencil?
    UnityEngine.RenderTexture
    SupportsStencil
    (static: System.Boolean UnityEngine.RenderTexture))
  (define-method-port
    get-temporary
    UnityEngine.RenderTexture
    GetTemporary
    (static: UnityEngine.RenderTexture System.Int32 System.Int32)
    (static:
      UnityEngine.RenderTexture
      System.Int32
      System.Int32
      System.Int32)
    (static:
      UnityEngine.RenderTexture
      System.Int32
      System.Int32
      System.Int32
      UnityEngine.RenderTextureFormat)
    (static:
      UnityEngine.RenderTexture
      System.Int32
      System.Int32
      System.Int32
      UnityEngine.RenderTextureFormat
      UnityEngine.RenderTextureReadWrite)
    (static:
      UnityEngine.RenderTexture
      System.Int32
      System.Int32
      System.Int32
      UnityEngine.RenderTextureFormat
      UnityEngine.RenderTextureReadWrite
      System.Int32))
  (define-method-port
    is-created?
    UnityEngine.RenderTexture
    IsCreated
    (System.Boolean))
  (define-method-port
    set-border-color
    UnityEngine.RenderTexture
    SetBorderColor
    (System.Void UnityEngine.Color))
  (define-method-port
    create?
    UnityEngine.RenderTexture
    Create
    (System.Boolean))
  (define-method-port
    release
    UnityEngine.RenderTexture
    Release
    (System.Void))
  (define-method-port
    set-global-shader-property
    UnityEngine.RenderTexture
    SetGlobalShaderProperty
    (System.Void System.String))
  (define-method-port
    get-texel-offset
    UnityEngine.RenderTexture
    GetTexelOffset
    (UnityEngine.Vector2))
  (define-method-port
    mark-restore-expected
    UnityEngine.RenderTexture
    MarkRestoreExpected
    (System.Void))
  (define-method-port
    discard-contents
    UnityEngine.RenderTexture
    DiscardContents
    (System.Void System.Boolean System.Boolean)
    (System.Void))
  (define-field-port
    width-get
    width-set!
    width-update!
    (property:)
    UnityEngine.RenderTexture
    width
    System.Int32)
  (define-field-port
    height-get
    height-set!
    height-update!
    (property:)
    UnityEngine.RenderTexture
    height
    System.Int32)
  (define-field-port
    depth-get
    depth-set!
    depth-update!
    (property:)
    UnityEngine.RenderTexture
    depth
    System.Int32)
  (define-field-port
    is-power-of-two?-get
    is-power-of-two?-set!
    is-power-of-two?-update!
    (property:)
    UnityEngine.RenderTexture
    isPowerOfTwo
    System.Boolean)
  (define-field-port
    s-rgb?
    #f
    #f
    (property:)
    UnityEngine.RenderTexture
    sRGB
    System.Boolean)
  (define-field-port
    format-get
    format-set!
    format-update!
    (property:)
    UnityEngine.RenderTexture
    format
    UnityEngine.RenderTextureFormat)
  (define-field-port
    use-mip-map?-get
    use-mip-map?-set!
    use-mip-map?-update!
    (property:)
    UnityEngine.RenderTexture
    useMipMap
    System.Boolean)
  (define-field-port
    generate-mips?-get
    generate-mips?-set!
    generate-mips?-update!
    (property:)
    UnityEngine.RenderTexture
    generateMips
    System.Boolean)
  (define-field-port
    is-cubemap?-get
    is-cubemap?-set!
    is-cubemap?-update!
    (property:)
    UnityEngine.RenderTexture
    isCubemap
    System.Boolean)
  (define-field-port
    is-volume?-get
    is-volume?-set!
    is-volume?-update!
    (property:)
    UnityEngine.RenderTexture
    isVolume
    System.Boolean)
  (define-field-port
    volume-depth-get
    volume-depth-set!
    volume-depth-update!
    (property:)
    UnityEngine.RenderTexture
    volumeDepth
    System.Int32)
  (define-field-port
    anti-aliasing-get
    anti-aliasing-set!
    anti-aliasing-update!
    (property:)
    UnityEngine.RenderTexture
    antiAliasing
    System.Int32)
  (define-field-port
    enable-random-write?-get
    enable-random-write?-set!
    enable-random-write?-update!
    (property:)
    UnityEngine.RenderTexture
    enableRandomWrite
    System.Boolean)
  (define-field-port
    color-buffer
    #f
    #f
    (property:)
    UnityEngine.RenderTexture
    colorBuffer
    UnityEngine.RenderBuffer)
  (define-field-port
    depth-buffer
    #f
    #f
    (property:)
    UnityEngine.RenderTexture
    depthBuffer
    UnityEngine.RenderBuffer)
  (define-field-port
    active-get
    active-set!
    active-update!
    (static: property:)
    UnityEngine.RenderTexture
    active
    UnityEngine.RenderTexture)
  (define-field-port
    enabled?-get
    enabled?-set!
    enabled?-update!
    (static: property:)
    UnityEngine.RenderTexture
    enabled
    System.Boolean))
