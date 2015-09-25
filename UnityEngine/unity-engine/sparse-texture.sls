(library (unity-engine sparse-texture)
  (export new
          is?
          sparse-texture?
          update-tile
          unload-tile
          update-tile-raw
          tile-width
          tile-height
          is-created?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.SparseTexture a ...)))))
  (define (is? a) (clr-is UnityEngine.SparseTexture a))
  (define (sparse-texture? a) (clr-is UnityEngine.SparseTexture a))
  (define-method-port
    update-tile
    UnityEngine.SparseTexture
    UpdateTile
    (System.Void
      System.Int32
      System.Int32
      System.Int32
      UnityEngine.Color32[]))
  (define-method-port
    unload-tile
    UnityEngine.SparseTexture
    UnloadTile
    (System.Void System.Int32 System.Int32 System.Int32))
  (define-method-port
    update-tile-raw
    UnityEngine.SparseTexture
    UpdateTileRaw
    (System.Void System.Int32 System.Int32 System.Int32 System.Byte[]))
  (define-field-port
    tile-width
    #f
    #f
    (property:)
    UnityEngine.SparseTexture
    tileWidth
    System.Int32)
  (define-field-port
    tile-height
    #f
    #f
    (property:)
    UnityEngine.SparseTexture
    tileHeight
    System.Int32)
  (define-field-port
    is-created?
    #f
    #f
    (property:)
    UnityEngine.SparseTexture
    isCreated
    System.Boolean))
