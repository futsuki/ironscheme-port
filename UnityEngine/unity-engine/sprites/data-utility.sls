(library (unity-engine sprites data-utility)
  (export new
          is?
          data-utility?
          get-inner-uv
          get-min-size
          get-outer-uv
          get-padding)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Sprites.DataUtility a ...)))))
  (define (is? a) (clr-is UnityEngine.Sprites.DataUtility a))
  (define (data-utility? a) (clr-is UnityEngine.Sprites.DataUtility a))
  (define-method-port
    get-inner-uv
    UnityEngine.Sprites.DataUtility
    GetInnerUV
    (static: UnityEngine.Vector4 UnityEngine.Sprite))
  (define-method-port
    get-min-size
    UnityEngine.Sprites.DataUtility
    GetMinSize
    (static: UnityEngine.Vector2 UnityEngine.Sprite))
  (define-method-port
    get-outer-uv
    UnityEngine.Sprites.DataUtility
    GetOuterUV
    (static: UnityEngine.Vector4 UnityEngine.Sprite))
  (define-method-port
    get-padding
    UnityEngine.Sprites.DataUtility
    GetPadding
    (static: UnityEngine.Vector4 UnityEngine.Sprite)))
