(library (unity-engine vr vrdevice)
  (export new is? vrdevice? get-native-ptr is-present? family model)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.VR.VRDevice a ...)))))
  (define (is? a) (clr-is UnityEngine.VR.VRDevice a))
  (define (vrdevice? a) (clr-is UnityEngine.VR.VRDevice a))
  (define-method-port
    get-native-ptr
    UnityEngine.VR.VRDevice
    GetNativePtr
    (static: System.IntPtr))
  (define-field-port
    is-present?
    #f
    #f
    (static: property:)
    UnityEngine.VR.VRDevice
    isPresent
    System.Boolean)
  (define-field-port
    family
    #f
    #f
    (static: property:)
    UnityEngine.VR.VRDevice
    family
    System.String)
  (define-field-port
    model
    #f
    #f
    (static: property:)
    UnityEngine.VR.VRDevice
    model
    System.String))
