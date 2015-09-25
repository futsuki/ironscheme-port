(library (unity-engine shader)
  (export new
          is?
          shader?
          disable-keyword
          find
          set-global-int
          set-global-float
          property-to-id
          set-global-texture
          set-global-buffer
          set-global-vector
          set-global-matrix
          set-global-tex-gen-mode
          enable-keyword
          set-global-texture-matrix-name
          is-keyword-enabled?
          warmup-all-shaders
          set-global-color
          is-supported?
          maximum-lod-get
          maximum-lod-set!
          maximum-lod-update!
          global-maximum-lod-get
          global-maximum-lod-set!
          global-maximum-lod-update!
          render-queue)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Shader a ...)))))
  (define (is? a) (clr-is UnityEngine.Shader a))
  (define (shader? a) (clr-is UnityEngine.Shader a))
  (define-method-port
    disable-keyword
    UnityEngine.Shader
    DisableKeyword
    (static: System.Void System.String))
  (define-method-port
    find
    UnityEngine.Shader
    Find
    (static: UnityEngine.Shader System.String))
  (define-method-port
    set-global-int
    UnityEngine.Shader
    SetGlobalInt
    (static: System.Void System.Int32 System.Int32)
    (static: System.Void System.String System.Int32))
  (define-method-port
    set-global-float
    UnityEngine.Shader
    SetGlobalFloat
    (static: System.Void System.Int32 System.Single)
    (static: System.Void System.String System.Single))
  (define-method-port
    property-to-id
    UnityEngine.Shader
    PropertyToID
    (static: System.Int32 System.String))
  (define-method-port
    set-global-texture
    UnityEngine.Shader
    SetGlobalTexture
    (static: System.Void System.Int32 UnityEngine.Texture)
    (static: System.Void System.String UnityEngine.Texture))
  (define-method-port
    set-global-buffer
    UnityEngine.Shader
    SetGlobalBuffer
    (static: System.Void System.String UnityEngine.ComputeBuffer))
  (define-method-port
    set-global-vector
    UnityEngine.Shader
    SetGlobalVector
    (static: System.Void System.Int32 UnityEngine.Vector4)
    (static: System.Void System.String UnityEngine.Vector4))
  (define-method-port
    set-global-matrix
    UnityEngine.Shader
    SetGlobalMatrix
    (static: System.Void System.Int32 UnityEngine.Matrix4x4)
    (static: System.Void System.String UnityEngine.Matrix4x4))
  (define-method-port
    set-global-tex-gen-mode
    UnityEngine.Shader
    SetGlobalTexGenMode
    (static: System.Void System.String UnityEngine.TexGenMode))
  (define-method-port
    enable-keyword
    UnityEngine.Shader
    EnableKeyword
    (static: System.Void System.String))
  (define-method-port
    set-global-texture-matrix-name
    UnityEngine.Shader
    SetGlobalTextureMatrixName
    (static: System.Void System.String System.String))
  (define-method-port
    is-keyword-enabled?
    UnityEngine.Shader
    IsKeywordEnabled
    (static: System.Boolean System.String))
  (define-method-port
    warmup-all-shaders
    UnityEngine.Shader
    WarmupAllShaders
    (static: System.Void))
  (define-method-port
    set-global-color
    UnityEngine.Shader
    SetGlobalColor
    (static: System.Void System.Int32 UnityEngine.Color)
    (static: System.Void System.String UnityEngine.Color))
  (define-field-port
    is-supported?
    #f
    #f
    (property:)
    UnityEngine.Shader
    isSupported
    System.Boolean)
  (define-field-port
    maximum-lod-get
    maximum-lod-set!
    maximum-lod-update!
    (property:)
    UnityEngine.Shader
    maximumLOD
    System.Int32)
  (define-field-port
    global-maximum-lod-get
    global-maximum-lod-set!
    global-maximum-lod-update!
    (static: property:)
    UnityEngine.Shader
    globalMaximumLOD
    System.Int32)
  (define-field-port
    render-queue
    #f
    #f
    (property:)
    UnityEngine.Shader
    renderQueue
    System.Int32))
