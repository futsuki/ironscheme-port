(library (unity-engine ui toggle-group)
  (export is?
          toggle-group?
          register-toggle
          active-toggles
          notify-toggle-on
          unregister-toggle
          any-toggles-on?
          set-all-toggles-off
          allow-switch-off?-get
          allow-switch-off?-set!
          allow-switch-off?-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.UI.ToggleGroup a))
  (define (toggle-group? a) (clr-is UnityEngine.UI.ToggleGroup a))
  (define-method-port
    register-toggle
    UnityEngine.UI.ToggleGroup
    RegisterToggle
    (System.Void UnityEngine.UI.Toggle))
  (define-method-port
    active-toggles
    UnityEngine.UI.ToggleGroup
    ActiveToggles
    ("System.Collections.Generic.IEnumerable`1[[UnityEngine.UI.Toggle, UnityEngine.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]"))
  (define-method-port
    notify-toggle-on
    UnityEngine.UI.ToggleGroup
    NotifyToggleOn
    (System.Void UnityEngine.UI.Toggle))
  (define-method-port
    unregister-toggle
    UnityEngine.UI.ToggleGroup
    UnregisterToggle
    (System.Void UnityEngine.UI.Toggle))
  (define-method-port
    any-toggles-on?
    UnityEngine.UI.ToggleGroup
    AnyTogglesOn
    (System.Boolean))
  (define-method-port
    set-all-toggles-off
    UnityEngine.UI.ToggleGroup
    SetAllTogglesOff
    (System.Void))
  (define-field-port
    allow-switch-off?-get
    allow-switch-off?-set!
    allow-switch-off?-update!
    (property:)
    UnityEngine.UI.ToggleGroup
    allowSwitchOff
    System.Boolean))
