(library (unity-engine cursor)
  (export new
          is?
          cursor?
          set-cursor
          visible?-get
          visible?-set!
          visible?-update!
          lock-state-get
          lock-state-set!
          lock-state-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Cursor a ...)))))
  (define (is? a) (clr-is UnityEngine.Cursor a))
  (define (cursor? a) (clr-is UnityEngine.Cursor a))
  (define-method-port
    set-cursor
    UnityEngine.Cursor
    SetCursor
    (static:
      System.Void
      UnityEngine.Texture2D
      UnityEngine.Vector2
      UnityEngine.CursorMode))
  (define-field-port
    visible?-get
    visible?-set!
    visible?-update!
    (static: property:)
    UnityEngine.Cursor
    visible
    System.Boolean)
  (define-field-port
    lock-state-get
    lock-state-set!
    lock-state-update!
    (static: property:)
    UnityEngine.Cursor
    lockState
    UnityEngine.CursorLockMode))
