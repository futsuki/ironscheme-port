(library (unity-engine gizmos)
  (export new
          is?
          gizmos?
          draw-guitexture
          draw-line
          draw-sphere
          draw-icon
          draw-frustum
          draw-wire-mesh
          draw-ray
          draw-mesh
          draw-cube
          draw-wire-sphere
          draw-wire-cube
          color-get
          color-set!
          color-update!
          matrix-get
          matrix-set!
          matrix-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Gizmos a ...)))))
  (define (is? a) (clr-is UnityEngine.Gizmos a))
  (define (gizmos? a) (clr-is UnityEngine.Gizmos a))
  (define-method-port
    draw-guitexture
    UnityEngine.Gizmos
    DrawGUITexture
    (static:
      System.Void
      UnityEngine.Rect
      UnityEngine.Texture
      System.Int32
      System.Int32
      System.Int32
      System.Int32)
    (static:
      System.Void
      UnityEngine.Rect
      UnityEngine.Texture
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      UnityEngine.Material)
    (static:
      System.Void
      UnityEngine.Rect
      UnityEngine.Texture
      UnityEngine.Material)
    (static: System.Void UnityEngine.Rect UnityEngine.Texture))
  (define-method-port
    draw-line
    UnityEngine.Gizmos
    DrawLine
    (static: System.Void UnityEngine.Vector3 UnityEngine.Vector3))
  (define-method-port
    draw-sphere
    UnityEngine.Gizmos
    DrawSphere
    (static: System.Void UnityEngine.Vector3 System.Single))
  (define-method-port
    draw-icon
    UnityEngine.Gizmos
    DrawIcon
    (static: System.Void UnityEngine.Vector3 System.String)
    (static:
      System.Void
      UnityEngine.Vector3
      System.String
      System.Boolean))
  (define-method-port
    draw-frustum
    UnityEngine.Gizmos
    DrawFrustum
    (static:
      System.Void
      UnityEngine.Vector3
      System.Single
      System.Single
      System.Single
      System.Single))
  (define-method-port
    draw-wire-mesh
    UnityEngine.Gizmos
    DrawWireMesh
    (static: System.Void UnityEngine.Mesh System.Int32)
    (static:
      System.Void
      UnityEngine.Mesh
      System.Int32
      UnityEngine.Vector3)
    (static:
      System.Void
      UnityEngine.Mesh
      System.Int32
      UnityEngine.Vector3
      UnityEngine.Quaternion)
    (static:
      System.Void
      UnityEngine.Mesh
      System.Int32
      UnityEngine.Vector3
      UnityEngine.Quaternion
      UnityEngine.Vector3)
    (static:
      System.Void
      UnityEngine.Mesh
      UnityEngine.Vector3
      UnityEngine.Quaternion
      UnityEngine.Vector3)
    (static: System.Void UnityEngine.Mesh)
    (static: System.Void UnityEngine.Mesh UnityEngine.Vector3)
    (static:
      System.Void
      UnityEngine.Mesh
      UnityEngine.Vector3
      UnityEngine.Quaternion))
  (define-method-port
    draw-ray
    UnityEngine.Gizmos
    DrawRay
    (static: System.Void UnityEngine.Vector3 UnityEngine.Vector3)
    (static: System.Void UnityEngine.Ray))
  (define-method-port
    draw-mesh
    UnityEngine.Gizmos
    DrawMesh
    (static: System.Void UnityEngine.Mesh System.Int32)
    (static:
      System.Void
      UnityEngine.Mesh
      System.Int32
      UnityEngine.Vector3)
    (static:
      System.Void
      UnityEngine.Mesh
      System.Int32
      UnityEngine.Vector3
      UnityEngine.Quaternion)
    (static:
      System.Void
      UnityEngine.Mesh
      System.Int32
      UnityEngine.Vector3
      UnityEngine.Quaternion
      UnityEngine.Vector3)
    (static:
      System.Void
      UnityEngine.Mesh
      UnityEngine.Vector3
      UnityEngine.Quaternion
      UnityEngine.Vector3)
    (static: System.Void UnityEngine.Mesh)
    (static: System.Void UnityEngine.Mesh UnityEngine.Vector3)
    (static:
      System.Void
      UnityEngine.Mesh
      UnityEngine.Vector3
      UnityEngine.Quaternion))
  (define-method-port
    draw-cube
    UnityEngine.Gizmos
    DrawCube
    (static: System.Void UnityEngine.Vector3 UnityEngine.Vector3))
  (define-method-port
    draw-wire-sphere
    UnityEngine.Gizmos
    DrawWireSphere
    (static: System.Void UnityEngine.Vector3 System.Single))
  (define-method-port
    draw-wire-cube
    UnityEngine.Gizmos
    DrawWireCube
    (static: System.Void UnityEngine.Vector3 UnityEngine.Vector3))
  (define-field-port
    color-get
    color-set!
    color-update!
    (static: property:)
    UnityEngine.Gizmos
    color
    UnityEngine.Color)
  (define-field-port
    matrix-get
    matrix-set!
    matrix-update!
    (static: property:)
    UnityEngine.Gizmos
    matrix
    UnityEngine.Matrix4x4))
