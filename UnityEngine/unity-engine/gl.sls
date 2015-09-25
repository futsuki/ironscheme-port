(library (unity-engine gl)
  (export new
          is?
          gl?
          render-target-barrier
          get-gpuprojection-matrix
          mult-matrix
          load-ortho
          color
          vertex3
          tex-coord
          pop-matrix
          end
          multi-tex-coord2
          multi-tex-coord3
          clear-with-skybox
          vertex
          invalidate-state
          load-pixel-matrix
          load-identity
          set-revert-backfacing
          load-projection-matrix
          issue-plugin-event
          multi-tex-coord
          tex-coord2
          tex-coord3
          viewport
          clear
          begin
          push-matrix
          triangles
          triangle-strip
          quads
          lines
          modelview-get
          modelview-set!
          modelview-update!
          wireframe?-get
          wireframe?-set!
          wireframe?-update!
          s-rgbwrite?-get
          s-rgbwrite?-set!
          s-rgbwrite?-update!
          invert-culling?-get
          invert-culling?-set!
          invert-culling?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e () ((_ a ...) #'(clr-new UnityEngine.GL a ...)))))
  (define (is? a) (clr-is UnityEngine.GL a))
  (define (gl? a) (clr-is UnityEngine.GL a))
  (define-method-port
    render-target-barrier
    UnityEngine.GL
    RenderTargetBarrier
    (static: System.Void))
  (define-method-port
    get-gpuprojection-matrix
    UnityEngine.GL
    GetGPUProjectionMatrix
    (static:
      UnityEngine.Matrix4x4
      UnityEngine.Matrix4x4
      System.Boolean))
  (define-method-port
    mult-matrix
    UnityEngine.GL
    MultMatrix
    (static: System.Void UnityEngine.Matrix4x4))
  (define-method-port
    load-ortho
    UnityEngine.GL
    LoadOrtho
    (static: System.Void))
  (define-method-port
    color
    UnityEngine.GL
    Color
    (static: System.Void UnityEngine.Color))
  (define-method-port
    vertex3
    UnityEngine.GL
    Vertex3
    (static: System.Void System.Single System.Single System.Single))
  (define-method-port
    tex-coord
    UnityEngine.GL
    TexCoord
    (static: System.Void UnityEngine.Vector3))
  (define-method-port
    pop-matrix
    UnityEngine.GL
    PopMatrix
    (static: System.Void))
  (define-method-port end UnityEngine.GL End (static: System.Void))
  (define-method-port
    multi-tex-coord2
    UnityEngine.GL
    MultiTexCoord2
    (static: System.Void System.Int32 System.Single System.Single))
  (define-method-port
    multi-tex-coord3
    UnityEngine.GL
    MultiTexCoord3
    (static:
      System.Void
      System.Int32
      System.Single
      System.Single
      System.Single))
  (define-method-port
    clear-with-skybox
    UnityEngine.GL
    ClearWithSkybox
    (static: System.Void System.Boolean UnityEngine.Camera))
  (define-method-port
    vertex
    UnityEngine.GL
    Vertex
    (static: System.Void UnityEngine.Vector3))
  (define-method-port
    invalidate-state
    UnityEngine.GL
    InvalidateState
    (static: System.Void))
  (define-method-port
    load-pixel-matrix
    UnityEngine.GL
    LoadPixelMatrix
    (static:
      System.Void
      System.Single
      System.Single
      System.Single
      System.Single)
    (static: System.Void))
  (define-method-port
    load-identity
    UnityEngine.GL
    LoadIdentity
    (static: System.Void))
  (define-method-port
    set-revert-backfacing
    UnityEngine.GL
    SetRevertBackfacing
    (static: System.Void System.Boolean))
  (define-method-port
    load-projection-matrix
    UnityEngine.GL
    LoadProjectionMatrix
    (static: System.Void UnityEngine.Matrix4x4))
  (define-method-port
    issue-plugin-event
    UnityEngine.GL
    IssuePluginEvent
    (static: System.Void System.Int32))
  (define-method-port
    multi-tex-coord
    UnityEngine.GL
    MultiTexCoord
    (static: System.Void System.Int32 UnityEngine.Vector3))
  (define-method-port
    tex-coord2
    UnityEngine.GL
    TexCoord2
    (static: System.Void System.Single System.Single))
  (define-method-port
    tex-coord3
    UnityEngine.GL
    TexCoord3
    (static: System.Void System.Single System.Single System.Single))
  (define-method-port
    viewport
    UnityEngine.GL
    Viewport
    (static: System.Void UnityEngine.Rect))
  (define-method-port
    clear
    UnityEngine.GL
    Clear
    (static:
      System.Void
      System.Boolean
      System.Boolean
      UnityEngine.Color
      System.Single)
    (static:
      System.Void
      System.Boolean
      System.Boolean
      UnityEngine.Color))
  (define-method-port
    begin
    UnityEngine.GL
    Begin
    (static: System.Void System.Int32))
  (define-method-port
    push-matrix
    UnityEngine.GL
    PushMatrix
    (static: System.Void))
  (define-field-port
    triangles
    #f
    #f
    (static:)
    UnityEngine.GL
    TRIANGLES
    System.Int32)
  (define-field-port
    triangle-strip
    #f
    #f
    (static:)
    UnityEngine.GL
    TRIANGLE_STRIP
    System.Int32)
  (define-field-port
    quads
    #f
    #f
    (static:)
    UnityEngine.GL
    QUADS
    System.Int32)
  (define-field-port
    lines
    #f
    #f
    (static:)
    UnityEngine.GL
    LINES
    System.Int32)
  (define-field-port
    modelview-get
    modelview-set!
    modelview-update!
    (static: property:)
    UnityEngine.GL
    modelview
    UnityEngine.Matrix4x4)
  (define-field-port
    wireframe?-get
    wireframe?-set!
    wireframe?-update!
    (static: property:)
    UnityEngine.GL
    wireframe
    System.Boolean)
  (define-field-port
    s-rgbwrite?-get
    s-rgbwrite?-set!
    s-rgbwrite?-update!
    (static: property:)
    UnityEngine.GL
    sRGBWrite
    System.Boolean)
  (define-field-port
    invert-culling?-get
    invert-culling?-set!
    invert-culling?-update!
    (static: property:)
    UnityEngine.GL
    invertCulling
    System.Boolean))
