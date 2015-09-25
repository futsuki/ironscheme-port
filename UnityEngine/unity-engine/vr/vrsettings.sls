(library (unity-engine vr vrsettings)
  (export new
          is?
          vrsettings?
          enabled?-get
          enabled?-set!
          enabled?-update!
          show-device-view?-get
          show-device-view?-set!
          show-device-view?-update!
          render-scale-get
          render-scale-set!
          render-scale-update!
          loaded-device-get
          loaded-device-set!
          loaded-device-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.VR.VRSettings a ...)))))
  (define (is? a) (clr-is UnityEngine.VR.VRSettings a))
  (define (vrsettings? a) (clr-is UnityEngine.VR.VRSettings a))
  (define-field-port
    enabled?-get
    enabled?-set!
    enabled?-update!
    (static: property:)
    UnityEngine.VR.VRSettings
    enabled
    System.Boolean)
  (define-field-port
    show-device-view?-get
    show-device-view?-set!
    show-device-view?-update!
    (static: property:)
    UnityEngine.VR.VRSettings
    showDeviceView
    System.Boolean)
  (define-field-port
    render-scale-get
    render-scale-set!
    render-scale-update!
    (static: property:)
    UnityEngine.VR.VRSettings
    renderScale
    System.Single)
  (define-field-port
    loaded-device-get
    loaded-device-set!
    loaded-device-update!
    (static: property:)
    UnityEngine.VR.VRSettings
    loadedDevice
    UnityEngine.VR.VRDeviceType))
