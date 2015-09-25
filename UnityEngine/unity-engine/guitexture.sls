(library (unity-engine guitexture)
  (export new
          is?
          guitexture?
          color-get
          color-set!
          color-update!
          texture-get
          texture-set!
          texture-update!
          pixel-inset-get
          pixel-inset-set!
          pixel-inset-update!
          border-get
          border-set!
          border-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.GUITexture a ...)))))
  (define (is? a) (clr-is UnityEngine.GUITexture a))
  (define (guitexture? a) (clr-is UnityEngine.GUITexture a))
  (define-field-port
    color-get
    color-set!
    color-update!
    (property:)
    UnityEngine.GUITexture
    color
    UnityEngine.Color)
  (define-field-port
    texture-get
    texture-set!
    texture-update!
    (property:)
    UnityEngine.GUITexture
    texture
    UnityEngine.Texture)
  (define-field-port
    pixel-inset-get
    pixel-inset-set!
    pixel-inset-update!
    (property:)
    UnityEngine.GUITexture
    pixelInset
    UnityEngine.Rect)
  (define-field-port
    border-get
    border-set!
    border-update!
    (property:)
    UnityEngine.GUITexture
    border
    UnityEngine.RectOffset))
