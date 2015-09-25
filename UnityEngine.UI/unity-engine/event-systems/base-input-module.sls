(library (unity-engine event-systems base-input-module)
  (export is?
          base-input-module?
          activate-module
          deactivate-module
          should-activate-module?
          is-module-supported?
          is-pointer-over-game-object?
          update-module
          process)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.EventSystems.BaseInputModule a))
  (define (base-input-module? a)
    (clr-is UnityEngine.EventSystems.BaseInputModule a))
  (define-method-port
    activate-module
    UnityEngine.EventSystems.BaseInputModule
    ActivateModule
    (System.Void))
  (define-method-port
    deactivate-module
    UnityEngine.EventSystems.BaseInputModule
    DeactivateModule
    (System.Void))
  (define-method-port
    should-activate-module?
    UnityEngine.EventSystems.BaseInputModule
    ShouldActivateModule
    (System.Boolean))
  (define-method-port
    is-module-supported?
    UnityEngine.EventSystems.BaseInputModule
    IsModuleSupported
    (System.Boolean))
  (define-method-port
    is-pointer-over-game-object?
    UnityEngine.EventSystems.BaseInputModule
    IsPointerOverGameObject
    (System.Boolean System.Int32))
  (define-method-port
    update-module
    UnityEngine.EventSystems.BaseInputModule
    UpdateModule
    (System.Void))
  (define-method-port
    process
    UnityEngine.EventSystems.BaseInputModule
    Process
    (System.Void)))
