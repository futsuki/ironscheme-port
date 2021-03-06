(library (unity-engine guilayout-group)
  (export new
          is?
          guilayout-group?
          add
          reset-cursor
          set-vertical
          set-horizontal
          calc-height
          peek-next
          apply-options
          calc-width
          get-next
          get-last
          to-string
          entries-get
          entries-set!
          entries-update!
          is-vertical?-get
          is-vertical?-set!
          is-vertical?-update!
          reset-coords?-get
          reset-coords?-set!
          reset-coords?-update!
          spacing-get
          spacing-set!
          spacing-update!
          same-size?-get
          same-size?-set!
          same-size?-update!
          is-window?-get
          is-window?-set!
          is-window?-update!
          window-id-get
          window-id-set!
          window-id-update!
          margin)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.GUILayoutGroup a ...)))))
  (define (is? a) (clr-is UnityEngine.GUILayoutGroup a))
  (define (guilayout-group? a) (clr-is UnityEngine.GUILayoutGroup a))
  (define-method-port
    add
    UnityEngine.GUILayoutGroup
    Add
    (System.Void UnityEngine.GUILayoutEntry))
  (define-method-port
    reset-cursor
    UnityEngine.GUILayoutGroup
    ResetCursor
    (System.Void))
  (define-method-port
    set-vertical
    UnityEngine.GUILayoutGroup
    SetVertical
    (System.Void System.Single System.Single))
  (define-method-port
    set-horizontal
    UnityEngine.GUILayoutGroup
    SetHorizontal
    (System.Void System.Single System.Single))
  (define-method-port
    calc-height
    UnityEngine.GUILayoutGroup
    CalcHeight
    (System.Void))
  (define-method-port
    peek-next
    UnityEngine.GUILayoutGroup
    PeekNext
    (UnityEngine.Rect))
  (define-method-port
    apply-options
    UnityEngine.GUILayoutGroup
    ApplyOptions
    (System.Void UnityEngine.GUILayoutOption[]))
  (define-method-port
    calc-width
    UnityEngine.GUILayoutGroup
    CalcWidth
    (System.Void))
  (define-method-port
    get-next
    UnityEngine.GUILayoutGroup
    GetNext
    (UnityEngine.GUILayoutEntry))
  (define-method-port
    get-last
    UnityEngine.GUILayoutGroup
    GetLast
    (UnityEngine.Rect))
  (define-method-port
    to-string
    UnityEngine.GUILayoutGroup
    ToString
    (System.String))
  (define-field-port
    entries-get
    entries-set!
    entries-update!
    ()
    UnityEngine.GUILayoutGroup
    entries
    "System.Collections.Generic.List`1[[UnityEngine.GUILayoutEntry, UnityEngine, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null]]")
  (define-field-port
    is-vertical?-get
    is-vertical?-set!
    is-vertical?-update!
    ()
    UnityEngine.GUILayoutGroup
    isVertical
    System.Boolean)
  (define-field-port
    reset-coords?-get
    reset-coords?-set!
    reset-coords?-update!
    ()
    UnityEngine.GUILayoutGroup
    resetCoords
    System.Boolean)
  (define-field-port
    spacing-get
    spacing-set!
    spacing-update!
    ()
    UnityEngine.GUILayoutGroup
    spacing
    System.Single)
  (define-field-port
    same-size?-get
    same-size?-set!
    same-size?-update!
    ()
    UnityEngine.GUILayoutGroup
    sameSize
    System.Boolean)
  (define-field-port
    is-window?-get
    is-window?-set!
    is-window?-update!
    ()
    UnityEngine.GUILayoutGroup
    isWindow
    System.Boolean)
  (define-field-port
    window-id-get
    window-id-set!
    window-id-update!
    ()
    UnityEngine.GUILayoutGroup
    windowID
    System.Int32)
  (define-field-port
    margin
    #f
    #f
    (property:)
    UnityEngine.GUILayoutGroup
    margin
    UnityEngine.RectOffset))
