(library (unity-engine vr input-tracking)
  (export new
          is?
          input-tracking?
          get-local-position
          get-local-rotation
          recenter)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.VR.InputTracking a ...)))))
  (define (is? a) (clr-is UnityEngine.VR.InputTracking a))
  (define (input-tracking? a) (clr-is UnityEngine.VR.InputTracking a))
  (define-method-port
    get-local-position
    UnityEngine.VR.InputTracking
    GetLocalPosition
    (static: UnityEngine.Vector3 UnityEngine.VR.VRNode))
  (define-method-port
    get-local-rotation
    UnityEngine.VR.InputTracking
    GetLocalRotation
    (static: UnityEngine.Quaternion UnityEngine.VR.VRNode))
  (define-method-port
    recenter
    UnityEngine.VR.InputTracking
    Recenter
    (static: System.Void)))
