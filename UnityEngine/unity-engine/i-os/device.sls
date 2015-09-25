(library (unity-engine i-os device)
  (export new
          is?
          device?
          set-no-backup-flag
          reset-no-backup-flag
          generation
          system-version
          vendor-identifier
          advertising-identifier
          advertising-tracking-enabled?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.iOS.Device a ...)))))
  (define (is? a) (clr-is UnityEngine.iOS.Device a))
  (define (device? a) (clr-is UnityEngine.iOS.Device a))
  (define-method-port
    set-no-backup-flag
    UnityEngine.iOS.Device
    SetNoBackupFlag
    (static: System.Void System.String))
  (define-method-port
    reset-no-backup-flag
    UnityEngine.iOS.Device
    ResetNoBackupFlag
    (static: System.Void System.String))
  (define-field-port
    generation
    #f
    #f
    (static: property:)
    UnityEngine.iOS.Device
    generation
    UnityEngine.iOS.DeviceGeneration)
  (define-field-port
    system-version
    #f
    #f
    (static: property:)
    UnityEngine.iOS.Device
    systemVersion
    System.String)
  (define-field-port
    vendor-identifier
    #f
    #f
    (static: property:)
    UnityEngine.iOS.Device
    vendorIdentifier
    System.String)
  (define-field-port
    advertising-identifier
    #f
    #f
    (static: property:)
    UnityEngine.iOS.Device
    advertisingIdentifier
    System.String)
  (define-field-port
    advertising-tracking-enabled?
    #f
    #f
    (static: property:)
    UnityEngine.iOS.Device
    advertisingTrackingEnabled
    System.Boolean))
