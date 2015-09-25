(library (unity-engine texture3-d)
  (export new
          is?
          texture3-d?
          set-pixels32
          get-pixels
          set-pixels
          get-pixels32
          apply
          depth
          format)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Texture3D a ...)))))
  (define (is? a) (clr-is UnityEngine.Texture3D a))
  (define (texture3-d? a) (clr-is UnityEngine.Texture3D a))
  (define-method-port
    set-pixels32
    UnityEngine.Texture3D
    SetPixels32
    (System.Void UnityEngine.Color32[])
    (System.Void UnityEngine.Color32[] System.Int32))
  (define-method-port
    get-pixels
    UnityEngine.Texture3D
    GetPixels
    (UnityEngine.Color[])
    (UnityEngine.Color[] System.Int32))
  (define-method-port
    set-pixels
    UnityEngine.Texture3D
    SetPixels
    (System.Void UnityEngine.Color[])
    (System.Void UnityEngine.Color[] System.Int32))
  (define-method-port
    get-pixels32
    UnityEngine.Texture3D
    GetPixels32
    (UnityEngine.Color32[])
    (UnityEngine.Color32[] System.Int32))
  (define-method-port
    apply
    UnityEngine.Texture3D
    Apply
    (System.Void)
    (System.Void System.Boolean))
  (define-field-port
    depth
    #f
    #f
    (property:)
    UnityEngine.Texture3D
    depth
    System.Int32)
  (define-field-port
    format
    #f
    #f
    (property:)
    UnityEngine.Texture3D
    format
    UnityEngine.TextureFormat))
