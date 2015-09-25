(library (unity-engine sprite)
  (export new
          is?
          sprite?
          override-geometry
          create
          bounds
          rect
          pixels-per-unit
          texture
          texture-rect
          texture-rect-offset
          packed?
          packing-mode
          packing-rotation
          pivot
          border
          vertices
          triangles
          uv)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Sprite a ...)))))
  (define (is? a) (clr-is UnityEngine.Sprite a))
  (define (sprite? a) (clr-is UnityEngine.Sprite a))
  (define-method-port
    override-geometry
    UnityEngine.Sprite
    OverrideGeometry
    (System.Void UnityEngine.Vector2[] System.UInt16[]))
  (define-method-port
    create
    UnityEngine.Sprite
    Create
    (static:
      UnityEngine.Sprite
      UnityEngine.Texture2D
      UnityEngine.Rect
      UnityEngine.Vector2)
    (static:
      UnityEngine.Sprite
      UnityEngine.Texture2D
      UnityEngine.Rect
      UnityEngine.Vector2
      System.Single)
    (static:
      UnityEngine.Sprite
      UnityEngine.Texture2D
      UnityEngine.Rect
      UnityEngine.Vector2
      System.Single
      System.UInt32)
    (static:
      UnityEngine.Sprite
      UnityEngine.Texture2D
      UnityEngine.Rect
      UnityEngine.Vector2
      System.Single
      System.UInt32
      UnityEngine.SpriteMeshType)
    (static:
      UnityEngine.Sprite
      UnityEngine.Texture2D
      UnityEngine.Rect
      UnityEngine.Vector2
      System.Single
      System.UInt32
      UnityEngine.SpriteMeshType
      UnityEngine.Vector4))
  (define-field-port
    bounds
    #f
    #f
    (property:)
    UnityEngine.Sprite
    bounds
    UnityEngine.Bounds)
  (define-field-port
    rect
    #f
    #f
    (property:)
    UnityEngine.Sprite
    rect
    UnityEngine.Rect)
  (define-field-port
    pixels-per-unit
    #f
    #f
    (property:)
    UnityEngine.Sprite
    pixelsPerUnit
    System.Single)
  (define-field-port
    texture
    #f
    #f
    (property:)
    UnityEngine.Sprite
    texture
    UnityEngine.Texture2D)
  (define-field-port
    texture-rect
    #f
    #f
    (property:)
    UnityEngine.Sprite
    textureRect
    UnityEngine.Rect)
  (define-field-port
    texture-rect-offset
    #f
    #f
    (property:)
    UnityEngine.Sprite
    textureRectOffset
    UnityEngine.Vector2)
  (define-field-port
    packed?
    #f
    #f
    (property:)
    UnityEngine.Sprite
    packed
    System.Boolean)
  (define-field-port
    packing-mode
    #f
    #f
    (property:)
    UnityEngine.Sprite
    packingMode
    UnityEngine.SpritePackingMode)
  (define-field-port
    packing-rotation
    #f
    #f
    (property:)
    UnityEngine.Sprite
    packingRotation
    UnityEngine.SpritePackingRotation)
  (define-field-port
    pivot
    #f
    #f
    (property:)
    UnityEngine.Sprite
    pivot
    UnityEngine.Vector2)
  (define-field-port
    border
    #f
    #f
    (property:)
    UnityEngine.Sprite
    border
    UnityEngine.Vector4)
  (define-field-port
    vertices
    #f
    #f
    (property:)
    UnityEngine.Sprite
    vertices
    UnityEngine.Vector2[])
  (define-field-port
    triangles
    #f
    #f
    (property:)
    UnityEngine.Sprite
    triangles
    System.UInt16[])
  (define-field-port
    uv
    #f
    #f
    (property:)
    UnityEngine.Sprite
    uv
    UnityEngine.Vector2[]))
