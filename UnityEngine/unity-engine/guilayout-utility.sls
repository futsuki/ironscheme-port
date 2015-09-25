(library (unity-engine guilayout-utility)
  (export new
          is?
          guilayout-utility?
          get-last-rect
          get-rect
          end-group
          begin-group
          get-aspect-rect)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.GUILayoutUtility a ...)))))
  (define (is? a) (clr-is UnityEngine.GUILayoutUtility a))
  (define (guilayout-utility? a)
    (clr-is UnityEngine.GUILayoutUtility a))
  (define-method-port
    get-last-rect
    UnityEngine.GUILayoutUtility
    GetLastRect
    (static: UnityEngine.Rect))
  (define-method-port
    get-rect
    UnityEngine.GUILayoutUtility
    GetRect
    (static:
      UnityEngine.Rect
      System.Single
      System.Single
      System.Single
      System.Single
      UnityEngine.GUIStyle
      UnityEngine.GUILayoutOption[])
    (static:
      UnityEngine.Rect
      System.Single
      System.Single
      System.Single
      System.Single
      UnityEngine.GUILayoutOption[])
    (static:
      UnityEngine.Rect
      System.Single
      System.Single
      System.Single
      System.Single
      UnityEngine.GUIStyle)
    (static:
      UnityEngine.Rect
      System.Single
      System.Single
      System.Single
      System.Single)
    (static:
      UnityEngine.Rect
      System.Single
      System.Single
      UnityEngine.GUIStyle
      UnityEngine.GUILayoutOption[])
    (static:
      UnityEngine.Rect
      System.Single
      System.Single
      UnityEngine.GUILayoutOption[])
    (static:
      UnityEngine.Rect
      System.Single
      System.Single
      UnityEngine.GUIStyle)
    (static: UnityEngine.Rect System.Single System.Single)
    (static:
      UnityEngine.Rect
      UnityEngine.GUIContent
      UnityEngine.GUIStyle
      UnityEngine.GUILayoutOption[])
    (static:
      UnityEngine.Rect
      UnityEngine.GUIContent
      UnityEngine.GUIStyle))
  (define-method-port
    end-group
    UnityEngine.GUILayoutUtility
    EndGroup
    (static: System.Void System.String))
  (define-method-port
    begin-group
    UnityEngine.GUILayoutUtility
    BeginGroup
    (static: System.Void System.String))
  (define-method-port
    get-aspect-rect
    UnityEngine.GUILayoutUtility
    GetAspectRect
    (static:
      UnityEngine.Rect
      System.Single
      UnityEngine.GUIStyle
      UnityEngine.GUILayoutOption[])
    (static:
      UnityEngine.Rect
      System.Single
      UnityEngine.GUILayoutOption[])
    (static: UnityEngine.Rect System.Single UnityEngine.GUIStyle)
    (static: UnityEngine.Rect System.Single)))
