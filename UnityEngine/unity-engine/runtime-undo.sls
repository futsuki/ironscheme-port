(library (unity-engine runtime-undo)
  (export new
          is?
          runtime-undo?
          record-object
          record-objects
          set-transform-parent)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.RuntimeUndo a ...)))))
  (define (is? a) (clr-is UnityEngine.RuntimeUndo a))
  (define (runtime-undo? a) (clr-is UnityEngine.RuntimeUndo a))
  (define-method-port
    record-object
    UnityEngine.RuntimeUndo
    RecordObject
    (static: System.Void UnityEngine.Object System.String))
  (define-method-port
    record-objects
    UnityEngine.RuntimeUndo
    RecordObjects
    (static: System.Void UnityEngine.Object[] System.String))
  (define-method-port
    set-transform-parent
    UnityEngine.RuntimeUndo
    SetTransformParent
    (static:
      System.Void
      UnityEngine.Transform
      UnityEngine.Transform
      System.String)))
