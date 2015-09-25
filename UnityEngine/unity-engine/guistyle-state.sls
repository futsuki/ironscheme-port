(library (unity-engine guistyle-state)
  (export new
          is?
          guistyle-state?
          background-get
          background-set!
          background-update!
          text-color-get
          text-color-set!
          text-color-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.GUIStyleState a ...)))))
  (define (is? a) (clr-is UnityEngine.GUIStyleState a))
  (define (guistyle-state? a) (clr-is UnityEngine.GUIStyleState a))
  (define-field-port
    background-get
    background-set!
    background-update!
    (property:)
    UnityEngine.GUIStyleState
    background
    UnityEngine.Texture2D)
  (define-field-port
    text-color-get
    text-color-set!
    text-color-update!
    (property:)
    UnityEngine.GUIStyleState
    textColor
    UnityEngine.Color))
