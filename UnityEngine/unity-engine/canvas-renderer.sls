(library (unity-engine canvas-renderer)
  (export new
          is?
          canvas-renderer?
          set-color
          get-color
          set-material
          set-alpha
          get-alpha
          get-material
          set-vertices
          clear
          is-mask?-get
          is-mask?-set!
          is-mask?-update!
          relative-depth
          absolute-depth)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.CanvasRenderer a ...)))))
  (define (is? a) (clr-is UnityEngine.CanvasRenderer a))
  (define (canvas-renderer? a) (clr-is UnityEngine.CanvasRenderer a))
  (define-method-port
    set-color
    UnityEngine.CanvasRenderer
    SetColor
    (System.Void UnityEngine.Color))
  (define-method-port
    get-color
    UnityEngine.CanvasRenderer
    GetColor
    (UnityEngine.Color))
  (define-method-port
    set-material
    UnityEngine.CanvasRenderer
    SetMaterial
    (System.Void UnityEngine.Material UnityEngine.Texture))
  (define-method-port
    set-alpha
    UnityEngine.CanvasRenderer
    SetAlpha
    (System.Void System.Single))
  (define-method-port
    get-alpha
    UnityEngine.CanvasRenderer
    GetAlpha
    (System.Single))
  (define-method-port
    get-material
    UnityEngine.CanvasRenderer
    GetMaterial
    (UnityEngine.Material))
  (define-method-port
    set-vertices
    UnityEngine.CanvasRenderer
    SetVertices
    (System.Void UnityEngine.UIVertex[] System.Int32))
  (define-method-port
    clear
    UnityEngine.CanvasRenderer
    Clear
    (System.Void))
  (define-field-port
    is-mask?-get
    is-mask?-set!
    is-mask?-update!
    (property:)
    UnityEngine.CanvasRenderer
    isMask
    System.Boolean)
  (define-field-port
    relative-depth
    #f
    #f
    (property:)
    UnityEngine.CanvasRenderer
    relativeDepth
    System.Int32)
  (define-field-port
    absolute-depth
    #f
    #f
    (property:)
    UnityEngine.CanvasRenderer
    absoluteDepth
    System.Int32))
