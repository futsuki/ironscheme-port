(library (unity-engine rendering command-buffer)
  (export new
          is?
          command-buffer?
          clear-render-target
          set-global-float
          set-global-matrix
          dispose
          set-render-target
          get-temporary-rt
          blit
          draw-procedural-indirect
          draw-renderer
          set-global-texture
          release
          set-global-vector
          draw-mesh
          draw-procedural
          release-temporary-rt
          clear
          set-global-color
          name-get
          name-set!
          name-update!
          size-in-bytes)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Rendering.CommandBuffer a ...)))))
  (define (is? a) (clr-is UnityEngine.Rendering.CommandBuffer a))
  (define (command-buffer? a)
    (clr-is UnityEngine.Rendering.CommandBuffer a))
  (define-method-port
    clear-render-target
    UnityEngine.Rendering.CommandBuffer
    ClearRenderTarget
    (System.Void System.Boolean System.Boolean UnityEngine.Color)
    (System.Void
      System.Boolean
      System.Boolean
      UnityEngine.Color
      System.Single))
  (define-method-port
    set-global-float
    UnityEngine.Rendering.CommandBuffer
    SetGlobalFloat
    (System.Void System.Int32 System.Single)
    (System.Void System.String System.Single))
  (define-method-port
    set-global-matrix
    UnityEngine.Rendering.CommandBuffer
    SetGlobalMatrix
    (System.Void System.Int32 UnityEngine.Matrix4x4)
    (System.Void System.String UnityEngine.Matrix4x4))
  (define-method-port
    dispose
    UnityEngine.Rendering.CommandBuffer
    Dispose
    (System.Void))
  (define-method-port
    set-render-target
    UnityEngine.Rendering.CommandBuffer
    SetRenderTarget
    (System.Void
      UnityEngine.Rendering.RenderTargetIdentifier[]
      UnityEngine.Rendering.RenderTargetIdentifier)
    (System.Void
      UnityEngine.Rendering.RenderTargetIdentifier
      UnityEngine.Rendering.RenderTargetIdentifier)
    (System.Void UnityEngine.Rendering.RenderTargetIdentifier))
  (define-method-port
    get-temporary-rt
    UnityEngine.Rendering.CommandBuffer
    GetTemporaryRT
    (System.Void System.Int32 System.Int32 System.Int32)
    (System.Void System.Int32 System.Int32 System.Int32 System.Int32)
    (System.Void
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      UnityEngine.FilterMode)
    (System.Void
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      UnityEngine.FilterMode
      UnityEngine.RenderTextureFormat)
    (System.Void
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      UnityEngine.FilterMode
      UnityEngine.RenderTextureFormat
      UnityEngine.RenderTextureReadWrite)
    (System.Void
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      UnityEngine.FilterMode
      UnityEngine.RenderTextureFormat
      UnityEngine.RenderTextureReadWrite
      System.Int32))
  (define-method-port
    blit
    UnityEngine.Rendering.CommandBuffer
    Blit
    (System.Void
      UnityEngine.Rendering.RenderTargetIdentifier
      UnityEngine.Rendering.RenderTargetIdentifier
      UnityEngine.Material
      System.Int32)
    (System.Void
      UnityEngine.Rendering.RenderTargetIdentifier
      UnityEngine.Rendering.RenderTargetIdentifier
      UnityEngine.Material)
    (System.Void
      UnityEngine.Rendering.RenderTargetIdentifier
      UnityEngine.Rendering.RenderTargetIdentifier)
    (System.Void
      UnityEngine.Texture
      UnityEngine.Rendering.RenderTargetIdentifier
      UnityEngine.Material
      System.Int32)
    (System.Void
      UnityEngine.Texture
      UnityEngine.Rendering.RenderTargetIdentifier
      UnityEngine.Material)
    (System.Void
      UnityEngine.Texture
      UnityEngine.Rendering.RenderTargetIdentifier))
  (define-method-port
    draw-procedural-indirect
    UnityEngine.Rendering.CommandBuffer
    DrawProceduralIndirect
    (System.Void
      UnityEngine.Matrix4x4
      UnityEngine.Material
      System.Int32
      UnityEngine.MeshTopology
      UnityEngine.ComputeBuffer)
    (System.Void
      UnityEngine.Matrix4x4
      UnityEngine.Material
      System.Int32
      UnityEngine.MeshTopology
      UnityEngine.ComputeBuffer
      System.Int32)
    (System.Void
      UnityEngine.Matrix4x4
      UnityEngine.Material
      System.Int32
      UnityEngine.MeshTopology
      UnityEngine.ComputeBuffer
      System.Int32
      UnityEngine.MaterialPropertyBlock))
  (define-method-port
    draw-renderer
    UnityEngine.Rendering.CommandBuffer
    DrawRenderer
    (System.Void UnityEngine.Renderer UnityEngine.Material)
    (System.Void UnityEngine.Renderer UnityEngine.Material System.Int32)
    (System.Void
      UnityEngine.Renderer
      UnityEngine.Material
      System.Int32
      System.Int32))
  (define-method-port
    set-global-texture
    UnityEngine.Rendering.CommandBuffer
    SetGlobalTexture
    (System.Void
      System.Int32
      UnityEngine.Rendering.RenderTargetIdentifier)
    (System.Void
      System.String
      UnityEngine.Rendering.RenderTargetIdentifier))
  (define-method-port
    release
    UnityEngine.Rendering.CommandBuffer
    Release
    (System.Void))
  (define-method-port
    set-global-vector
    UnityEngine.Rendering.CommandBuffer
    SetGlobalVector
    (System.Void System.Int32 UnityEngine.Vector4)
    (System.Void System.String UnityEngine.Vector4))
  (define-method-port
    draw-mesh
    UnityEngine.Rendering.CommandBuffer
    DrawMesh
    (System.Void
      UnityEngine.Mesh
      UnityEngine.Matrix4x4
      UnityEngine.Material)
    (System.Void
      UnityEngine.Mesh
      UnityEngine.Matrix4x4
      UnityEngine.Material
      System.Int32)
    (System.Void
      UnityEngine.Mesh
      UnityEngine.Matrix4x4
      UnityEngine.Material
      System.Int32
      System.Int32)
    (System.Void
      UnityEngine.Mesh
      UnityEngine.Matrix4x4
      UnityEngine.Material
      System.Int32
      System.Int32
      UnityEngine.MaterialPropertyBlock))
  (define-method-port
    draw-procedural
    UnityEngine.Rendering.CommandBuffer
    DrawProcedural
    (System.Void
      UnityEngine.Matrix4x4
      UnityEngine.Material
      System.Int32
      UnityEngine.MeshTopology
      System.Int32)
    (System.Void
      UnityEngine.Matrix4x4
      UnityEngine.Material
      System.Int32
      UnityEngine.MeshTopology
      System.Int32
      System.Int32)
    (System.Void
      UnityEngine.Matrix4x4
      UnityEngine.Material
      System.Int32
      UnityEngine.MeshTopology
      System.Int32
      System.Int32
      UnityEngine.MaterialPropertyBlock))
  (define-method-port
    release-temporary-rt
    UnityEngine.Rendering.CommandBuffer
    ReleaseTemporaryRT
    (System.Void System.Int32))
  (define-method-port
    clear
    UnityEngine.Rendering.CommandBuffer
    Clear
    (System.Void))
  (define-method-port
    set-global-color
    UnityEngine.Rendering.CommandBuffer
    SetGlobalColor
    (System.Void System.Int32 UnityEngine.Color)
    (System.Void System.String UnityEngine.Color))
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    UnityEngine.Rendering.CommandBuffer
    name
    System.String)
  (define-field-port
    size-in-bytes
    #f
    #f
    (property:)
    UnityEngine.Rendering.CommandBuffer
    sizeInBytes
    System.Int32))