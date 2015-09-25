(library (unity-engine ui misc)
  (export is? misc? destroy destroy-immediate)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.UI.Misc a))
  (define (misc? a) (clr-is UnityEngine.UI.Misc a))
  (define-method-port
    destroy
    UnityEngine.UI.Misc
    Destroy
    (static: System.Void UnityEngine.Object))
  (define-method-port
    destroy-immediate
    UnityEngine.UI.Misc
    DestroyImmediate
    (static: System.Void UnityEngine.Object)))
