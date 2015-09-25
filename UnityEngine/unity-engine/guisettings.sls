(library (unity-engine guisettings)
  (export new
          is?
          guisettings?
          double-click-selects-word?-get
          double-click-selects-word?-set!
          double-click-selects-word?-update!
          triple-click-selects-line?-get
          triple-click-selects-line?-set!
          triple-click-selects-line?-update!
          cursor-color-get
          cursor-color-set!
          cursor-color-update!
          cursor-flash-speed-get
          cursor-flash-speed-set!
          cursor-flash-speed-update!
          selection-color-get
          selection-color-set!
          selection-color-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.GUISettings a ...)))))
  (define (is? a) (clr-is UnityEngine.GUISettings a))
  (define (guisettings? a) (clr-is UnityEngine.GUISettings a))
  (define-field-port
    double-click-selects-word?-get
    double-click-selects-word?-set!
    double-click-selects-word?-update!
    (property:)
    UnityEngine.GUISettings
    doubleClickSelectsWord
    System.Boolean)
  (define-field-port
    triple-click-selects-line?-get
    triple-click-selects-line?-set!
    triple-click-selects-line?-update!
    (property:)
    UnityEngine.GUISettings
    tripleClickSelectsLine
    System.Boolean)
  (define-field-port
    cursor-color-get
    cursor-color-set!
    cursor-color-update!
    (property:)
    UnityEngine.GUISettings
    cursorColor
    UnityEngine.Color)
  (define-field-port
    cursor-flash-speed-get
    cursor-flash-speed-set!
    cursor-flash-speed-update!
    (property:)
    UnityEngine.GUISettings
    cursorFlashSpeed
    System.Single)
  (define-field-port
    selection-color-get
    selection-color-set!
    selection-color-update!
    (property:)
    UnityEngine.GUISettings
    selectionColor
    UnityEngine.Color))
