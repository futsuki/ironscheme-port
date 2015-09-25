(library (unity-engine guiclip)
  (export new
          is?
          guiclip?
          get-absolute-mouse-position
          clip
          unclip
          enabled?
          topmost-rect
          visible-rect)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.GUIClip a ...)))))
  (define (is? a) (clr-is UnityEngine.GUIClip a))
  (define (guiclip? a) (clr-is UnityEngine.GUIClip a))
  (define-method-port
    get-absolute-mouse-position
    UnityEngine.GUIClip
    GetAbsoluteMousePosition
    (static: UnityEngine.Vector2))
  (define-method-port
    clip
    UnityEngine.GUIClip
    Clip
    (static: UnityEngine.Rect UnityEngine.Rect)
    (static: UnityEngine.Vector2 UnityEngine.Vector2))
  (define-method-port
    unclip
    UnityEngine.GUIClip
    Unclip
    (static: UnityEngine.Rect UnityEngine.Rect)
    (static: UnityEngine.Vector2 UnityEngine.Vector2))
  (define-field-port
    enabled?
    #f
    #f
    (static: property:)
    UnityEngine.GUIClip
    enabled
    System.Boolean)
  (define-field-port
    topmost-rect
    #f
    #f
    (static: property:)
    UnityEngine.GUIClip
    topmostRect
    UnityEngine.Rect)
  (define-field-port
    visible-rect
    #f
    #f
    (static: property:)
    UnityEngine.GUIClip
    visibleRect
    UnityEngine.Rect))
