(library (unity-engine scriptable-object)
  (export new is? scriptable-object? set-dirty create-instance)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.ScriptableObject a ...)))))
  (define (is? a) (clr-is UnityEngine.ScriptableObject a))
  (define (scriptable-object? a)
    (clr-is UnityEngine.ScriptableObject a))
  (define-method-port
    set-dirty
    UnityEngine.ScriptableObject
    SetDirty
    (System.Void))
  (define-method-port
    create-instance
    UnityEngine.ScriptableObject
    CreateInstance
    (static: UnityEngine.ScriptableObject System.Type)
    (static: UnityEngine.ScriptableObject System.String)))
