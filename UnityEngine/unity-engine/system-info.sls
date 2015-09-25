(library (unity-engine system-info)
  (export new
          is?
          system-info?
          supports-render-texture-format?
          supports-texture-format?
          operating-system
          processor-type
          processor-count
          system-memory-size
          graphics-memory-size
          graphics-device-name
          graphics-device-vendor
          graphics-device-id
          graphics-device-vendor-id
          graphics-device-type
          graphics-device-version
          graphics-shader-level
          graphics-pixel-fillrate
          supports-vertex-programs?
          graphics-multi-threaded?
          supports-shadows?
          supports-render-textures?
          supports-render-to-cubemap?
          supports-image-effects?
          supports3-dtextures?
          supports-compute-shaders?
          supports-instancing?
          supports-sparse-textures?
          supported-render-target-count
          supports-stencil
          npot-support
          device-unique-identifier
          device-name
          device-model
          supports-accelerometer?
          supports-gyroscope?
          supports-location-service?
          supports-vibration?
          device-type
          max-texture-size)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.SystemInfo a ...)))))
  (define (is? a) (clr-is UnityEngine.SystemInfo a))
  (define (system-info? a) (clr-is UnityEngine.SystemInfo a))
  (define-method-port
    supports-render-texture-format?
    UnityEngine.SystemInfo
    SupportsRenderTextureFormat
    (static: System.Boolean UnityEngine.RenderTextureFormat))
  (define-method-port
    supports-texture-format?
    UnityEngine.SystemInfo
    SupportsTextureFormat
    (static: System.Boolean UnityEngine.TextureFormat))
  (define-field-port
    operating-system
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    operatingSystem
    System.String)
  (define-field-port
    processor-type
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    processorType
    System.String)
  (define-field-port
    processor-count
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    processorCount
    System.Int32)
  (define-field-port
    system-memory-size
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    systemMemorySize
    System.Int32)
  (define-field-port
    graphics-memory-size
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    graphicsMemorySize
    System.Int32)
  (define-field-port
    graphics-device-name
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    graphicsDeviceName
    System.String)
  (define-field-port
    graphics-device-vendor
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    graphicsDeviceVendor
    System.String)
  (define-field-port
    graphics-device-id
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    graphicsDeviceID
    System.Int32)
  (define-field-port
    graphics-device-vendor-id
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    graphicsDeviceVendorID
    System.Int32)
  (define-field-port
    graphics-device-type
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    graphicsDeviceType
    UnityEngine.Rendering.GraphicsDeviceType)
  (define-field-port
    graphics-device-version
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    graphicsDeviceVersion
    System.String)
  (define-field-port
    graphics-shader-level
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    graphicsShaderLevel
    System.Int32)
  (define-field-port
    graphics-pixel-fillrate
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    graphicsPixelFillrate
    System.Int32)
  (define-field-port
    supports-vertex-programs?
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    supportsVertexPrograms
    System.Boolean)
  (define-field-port
    graphics-multi-threaded?
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    graphicsMultiThreaded
    System.Boolean)
  (define-field-port
    supports-shadows?
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    supportsShadows
    System.Boolean)
  (define-field-port
    supports-render-textures?
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    supportsRenderTextures
    System.Boolean)
  (define-field-port
    supports-render-to-cubemap?
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    supportsRenderToCubemap
    System.Boolean)
  (define-field-port
    supports-image-effects?
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    supportsImageEffects
    System.Boolean)
  (define-field-port
    supports3-dtextures?
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    supports3DTextures
    System.Boolean)
  (define-field-port
    supports-compute-shaders?
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    supportsComputeShaders
    System.Boolean)
  (define-field-port
    supports-instancing?
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    supportsInstancing
    System.Boolean)
  (define-field-port
    supports-sparse-textures?
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    supportsSparseTextures
    System.Boolean)
  (define-field-port
    supported-render-target-count
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    supportedRenderTargetCount
    System.Int32)
  (define-field-port
    supports-stencil
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    supportsStencil
    System.Int32)
  (define-field-port
    npot-support
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    npotSupport
    UnityEngine.NPOTSupport)
  (define-field-port
    device-unique-identifier
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    deviceUniqueIdentifier
    System.String)
  (define-field-port
    device-name
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    deviceName
    System.String)
  (define-field-port
    device-model
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    deviceModel
    System.String)
  (define-field-port
    supports-accelerometer?
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    supportsAccelerometer
    System.Boolean)
  (define-field-port
    supports-gyroscope?
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    supportsGyroscope
    System.Boolean)
  (define-field-port
    supports-location-service?
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    supportsLocationService
    System.Boolean)
  (define-field-port
    supports-vibration?
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    supportsVibration
    System.Boolean)
  (define-field-port
    device-type
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    deviceType
    UnityEngine.DeviceType)
  (define-field-port
    max-texture-size
    #f
    #f
    (static: property:)
    UnityEngine.SystemInfo
    maxTextureSize
    System.Int32))
