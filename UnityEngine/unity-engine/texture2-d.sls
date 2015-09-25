(library (unity-engine texture2-d)
  (export new
          is?
          texture2-d?
          get-pixel-bilinear
          load-image?
          set-pixels32
          encode-to-jpg
          get-pixels
          update-external-texture
          set-pixels
          get-pixels32
          create-external-texture
          load-raw-texture-data
          compress
          pack-textures
          encode-to-png
          resize?
          apply
          set-pixel
          read-pixels
          get-pixel
          get-raw-texture-data
          mipmap-count
          format
          white-texture
          black-texture
          alpha-is-transparency?-get
          alpha-is-transparency?-set!
          alpha-is-transparency?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Texture2D a ...)))))
  (define (is? a) (clr-is UnityEngine.Texture2D a))
  (define (texture2-d? a) (clr-is UnityEngine.Texture2D a))
  (define-method-port
    get-pixel-bilinear
    UnityEngine.Texture2D
    GetPixelBilinear
    (UnityEngine.Color System.Single System.Single))
  (define-method-port
    load-image?
    UnityEngine.Texture2D
    LoadImage
    (System.Boolean System.Byte[]))
  (define-method-port
    set-pixels32
    UnityEngine.Texture2D
    SetPixels32
    (System.Void
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      UnityEngine.Color32[]
      System.Int32)
    (System.Void
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      UnityEngine.Color32[])
    (System.Void UnityEngine.Color32[] System.Int32)
    (System.Void UnityEngine.Color32[]))
  (define-method-port
    encode-to-jpg
    UnityEngine.Texture2D
    EncodeToJPG
    (System.Byte[])
    (System.Byte[] System.Int32))
  (define-method-port
    get-pixels
    UnityEngine.Texture2D
    GetPixels
    (UnityEngine.Color[]
      System.Int32
      System.Int32
      System.Int32
      System.Int32)
    (UnityEngine.Color[]
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32)
    (UnityEngine.Color[] System.Int32)
    (UnityEngine.Color[]))
  (define-method-port
    update-external-texture
    UnityEngine.Texture2D
    UpdateExternalTexture
    (System.Void System.IntPtr))
  (define-method-port
    set-pixels
    UnityEngine.Texture2D
    SetPixels
    (System.Void
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      UnityEngine.Color[])
    (System.Void
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      UnityEngine.Color[]
      System.Int32)
    (System.Void UnityEngine.Color[] System.Int32)
    (System.Void UnityEngine.Color[]))
  (define-method-port
    get-pixels32
    UnityEngine.Texture2D
    GetPixels32
    (UnityEngine.Color32[])
    (UnityEngine.Color32[] System.Int32))
  (define-method-port
    create-external-texture
    UnityEngine.Texture2D
    CreateExternalTexture
    (static:
      UnityEngine.Texture2D
      System.Int32
      System.Int32
      UnityEngine.TextureFormat
      System.Boolean
      System.Boolean
      System.IntPtr))
  (define-method-port
    load-raw-texture-data
    UnityEngine.Texture2D
    LoadRawTextureData
    (System.Void System.Byte[]))
  (define-method-port
    compress
    UnityEngine.Texture2D
    Compress
    (System.Void System.Boolean))
  (define-method-port
    pack-textures
    UnityEngine.Texture2D
    PackTextures
    (UnityEngine.Rect[] UnityEngine.Texture2D[] System.Int32)
    (UnityEngine.Rect[]
      UnityEngine.Texture2D[]
      System.Int32
      System.Int32)
    (UnityEngine.Rect[]
      UnityEngine.Texture2D[]
      System.Int32
      System.Int32
      System.Boolean))
  (define-method-port
    encode-to-png
    UnityEngine.Texture2D
    EncodeToPNG
    (System.Byte[]))
  (define-method-port
    resize?
    UnityEngine.Texture2D
    Resize
    (System.Boolean System.Int32 System.Int32)
    (System.Boolean
      System.Int32
      System.Int32
      UnityEngine.TextureFormat
      System.Boolean))
  (define-method-port
    apply
    UnityEngine.Texture2D
    Apply
    (System.Void)
    (System.Void System.Boolean)
    (System.Void System.Boolean System.Boolean))
  (define-method-port
    set-pixel
    UnityEngine.Texture2D
    SetPixel
    (System.Void System.Int32 System.Int32 UnityEngine.Color))
  (define-method-port
    read-pixels
    UnityEngine.Texture2D
    ReadPixels
    (System.Void UnityEngine.Rect System.Int32 System.Int32)
    (System.Void
      UnityEngine.Rect
      System.Int32
      System.Int32
      System.Boolean))
  (define-method-port
    get-pixel
    UnityEngine.Texture2D
    GetPixel
    (UnityEngine.Color System.Int32 System.Int32))
  (define-method-port
    get-raw-texture-data
    UnityEngine.Texture2D
    GetRawTextureData
    (System.Byte[]))
  (define-field-port
    mipmap-count
    #f
    #f
    (property:)
    UnityEngine.Texture2D
    mipmapCount
    System.Int32)
  (define-field-port
    format
    #f
    #f
    (property:)
    UnityEngine.Texture2D
    format
    UnityEngine.TextureFormat)
  (define-field-port
    white-texture
    #f
    #f
    (static: property:)
    UnityEngine.Texture2D
    whiteTexture
    UnityEngine.Texture2D)
  (define-field-port
    black-texture
    #f
    #f
    (static: property:)
    UnityEngine.Texture2D
    blackTexture
    UnityEngine.Texture2D)
  (define-field-port
    alpha-is-transparency?-get
    alpha-is-transparency?-set!
    alpha-is-transparency?-update!
    (property:)
    UnityEngine.Texture2D
    alphaIsTransparency
    System.Boolean))
