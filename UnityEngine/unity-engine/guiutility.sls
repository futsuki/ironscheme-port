(library (unity-engine guiutility)
  (export new
          is?
          guiutility?
          scale-around-pivot
          query-state-object
          screen-to-guipoint
          guito-screen-point
          screen-to-guirect
          rotate-around-pivot
          get-control-id
          get-state-object
          exit-gui
          hot-control-get
          hot-control-set!
          hot-control-update!
          keyboard-control-get
          keyboard-control-set!
          keyboard-control-update!
          has-modal-window?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.GUIUtility a ...)))))
  (define (is? a) (clr-is UnityEngine.GUIUtility a))
  (define (guiutility? a) (clr-is UnityEngine.GUIUtility a))
  (define-method-port
    scale-around-pivot
    UnityEngine.GUIUtility
    ScaleAroundPivot
    (static: System.Void UnityEngine.Vector2 UnityEngine.Vector2))
  (define-method-port
    query-state-object
    UnityEngine.GUIUtility
    QueryStateObject
    (static: System.Object System.Type System.Int32))
  (define-method-port
    screen-to-guipoint
    UnityEngine.GUIUtility
    ScreenToGUIPoint
    (static: UnityEngine.Vector2 UnityEngine.Vector2))
  (define-method-port
    guito-screen-point
    UnityEngine.GUIUtility
    GUIToScreenPoint
    (static: UnityEngine.Vector2 UnityEngine.Vector2))
  (define-method-port
    screen-to-guirect
    UnityEngine.GUIUtility
    ScreenToGUIRect
    (static: UnityEngine.Rect UnityEngine.Rect))
  (define-method-port
    rotate-around-pivot
    UnityEngine.GUIUtility
    RotateAroundPivot
    (static: System.Void System.Single UnityEngine.Vector2))
  (define-method-port
    get-control-id
    UnityEngine.GUIUtility
    GetControlID
    (static:
      System.Int32
      UnityEngine.GUIContent
      UnityEngine.FocusType
      UnityEngine.Rect)
    (static:
      System.Int32
      System.Int32
      UnityEngine.FocusType
      UnityEngine.Rect)
    (static: System.Int32 UnityEngine.FocusType UnityEngine.Rect)
    (static: System.Int32 UnityEngine.GUIContent UnityEngine.FocusType)
    (static: System.Int32 System.Int32 UnityEngine.FocusType)
    (static: System.Int32 UnityEngine.FocusType))
  (define-method-port
    get-state-object
    UnityEngine.GUIUtility
    GetStateObject
    (static: System.Object System.Type System.Int32))
  (define-method-port
    exit-gui
    UnityEngine.GUIUtility
    ExitGUI
    (static: System.Void))
  (define-field-port
    hot-control-get
    hot-control-set!
    hot-control-update!
    (static: property:)
    UnityEngine.GUIUtility
    hotControl
    System.Int32)
  (define-field-port
    keyboard-control-get
    keyboard-control-set!
    keyboard-control-update!
    (static: property:)
    UnityEngine.GUIUtility
    keyboardControl
    System.Int32)
  (define-field-port
    has-modal-window?
    #f
    #f
    (static: property:)
    UnityEngine.GUIUtility
    hasModalWindow
    System.Boolean))
