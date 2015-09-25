(library (unity-engine networking network-manager-hud)
  (export new
          is?
          network-manager-hud?
          manager-get
          manager-set!
          manager-update!
          show-gui?-get
          show-gui?-set!
          show-gui?-update!
          offset-x-get
          offset-x-set!
          offset-x-update!
          offset-y-get
          offset-y-set!
          offset-y-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.NetworkManagerHUD a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.NetworkManagerHUD a))
  (define (network-manager-hud? a)
    (clr-is UnityEngine.Networking.NetworkManagerHUD a))
  (define-field-port
    manager-get
    manager-set!
    manager-update!
    ()
    UnityEngine.Networking.NetworkManagerHUD
    manager
    UnityEngine.Networking.NetworkManager)
  (define-field-port
    show-gui?-get
    show-gui?-set!
    show-gui?-update!
    ()
    UnityEngine.Networking.NetworkManagerHUD
    showGUI
    System.Boolean)
  (define-field-port
    offset-x-get
    offset-x-set!
    offset-x-update!
    ()
    UnityEngine.Networking.NetworkManagerHUD
    offsetX
    System.Int32)
  (define-field-port
    offset-y-get
    offset-y-set!
    offset-y-update!
    ()
    UnityEngine.Networking.NetworkManagerHUD
    offsetY
    System.Int32))
