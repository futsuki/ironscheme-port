(library (unity-engine event-systems touch-input-module)
  (export is?
          touch-input-module?
          deactivate-module
          is-module-supported?
          should-activate-module?
          update-module
          process
          to-string
          allow-activation-on-standalone?-get
          allow-activation-on-standalone?-set!
          allow-activation-on-standalone?-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.EventSystems.TouchInputModule a))
  (define (touch-input-module? a)
    (clr-is UnityEngine.EventSystems.TouchInputModule a))
  (define-method-port
    deactivate-module
    UnityEngine.EventSystems.TouchInputModule
    DeactivateModule
    (System.Void))
  (define-method-port
    is-module-supported?
    UnityEngine.EventSystems.TouchInputModule
    IsModuleSupported
    (System.Boolean))
  (define-method-port
    should-activate-module?
    UnityEngine.EventSystems.TouchInputModule
    ShouldActivateModule
    (System.Boolean))
  (define-method-port
    update-module
    UnityEngine.EventSystems.TouchInputModule
    UpdateModule
    (System.Void))
  (define-method-port
    process
    UnityEngine.EventSystems.TouchInputModule
    Process
    (System.Void))
  (define-method-port
    to-string
    UnityEngine.EventSystems.TouchInputModule
    ToString
    (System.String))
  (define-field-port
    allow-activation-on-standalone?-get
    allow-activation-on-standalone?-set!
    allow-activation-on-standalone?-update!
    (property:)
    UnityEngine.EventSystems.TouchInputModule
    allowActivationOnStandalone
    System.Boolean))
