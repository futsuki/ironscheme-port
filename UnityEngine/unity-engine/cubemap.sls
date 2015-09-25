(library (unity-engine cubemap)
  (export new
          is?
          cubemap?
          smooth-edges
          get-pixels
          set-pixels
          apply
          set-pixel
          get-pixel
          format)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Cubemap a ...)))))
  (define (is? a) (clr-is UnityEngine.Cubemap a))
  (define (cubemap? a) (clr-is UnityEngine.Cubemap a))
  (define-method-port
    smooth-edges
    UnityEngine.Cubemap
    SmoothEdges
    (System.Void)
    (System.Void System.Int32))
  (define-method-port
    get-pixels
    UnityEngine.Cubemap
    GetPixels
    (UnityEngine.Color[] UnityEngine.CubemapFace)
    (UnityEngine.Color[] UnityEngine.CubemapFace System.Int32))
  (define-method-port
    set-pixels
    UnityEngine.Cubemap
    SetPixels
    (System.Void UnityEngine.Color[] UnityEngine.CubemapFace)
    (System.Void
      UnityEngine.Color[]
      UnityEngine.CubemapFace
      System.Int32))
  (define-method-port
    apply
    UnityEngine.Cubemap
    Apply
    (System.Void)
    (System.Void System.Boolean)
    (System.Void System.Boolean System.Boolean))
  (define-method-port
    set-pixel
    UnityEngine.Cubemap
    SetPixel
    (System.Void
      UnityEngine.CubemapFace
      System.Int32
      System.Int32
      UnityEngine.Color))
  (define-method-port
    get-pixel
    UnityEngine.Cubemap
    GetPixel
    (UnityEngine.Color
      UnityEngine.CubemapFace
      System.Int32
      System.Int32))
  (define-field-port
    format
    #f
    #f
    (property:)
    UnityEngine.Cubemap
    format
    UnityEngine.TextureFormat))
