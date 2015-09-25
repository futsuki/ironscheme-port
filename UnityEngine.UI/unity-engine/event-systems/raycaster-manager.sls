(library (unity-engine event-systems raycaster-manager)
  (export is?
          raycaster-manager?
          add-raycaster
          get-raycasters
          remove-raycasters)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.EventSystems.RaycasterManager a))
  (define (raycaster-manager? a)
    (clr-is UnityEngine.EventSystems.RaycasterManager a))
  (define-method-port
    add-raycaster
    UnityEngine.EventSystems.RaycasterManager
    AddRaycaster
    (static: System.Void UnityEngine.EventSystems.BaseRaycaster))
  (define-method-port
    get-raycasters
    UnityEngine.EventSystems.RaycasterManager
    GetRaycasters
    (static:
      "System.Collections.Generic.List`1[[UnityEngine.EventSystems.BaseRaycaster, UnityEngine.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]"))
  (define-method-port
    remove-raycasters
    UnityEngine.EventSystems.RaycasterManager
    RemoveRaycasters
    (static: System.Void UnityEngine.EventSystems.BaseRaycaster)))
