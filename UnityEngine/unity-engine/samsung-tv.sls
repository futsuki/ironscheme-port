(library (unity-engine samsung-tv)
  (export new
          is?
          samsung-tv?
          touch-pad-mode-get
          touch-pad-mode-set!
          touch-pad-mode-update!
          gesture-mode-get
          gesture-mode-set!
          gesture-mode-update!
          air-mouse-connected?
          gesture-working?
          game-pad-mode-get
          game-pad-mode-set!
          game-pad-mode-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.SamsungTV a ...)))))
  (define (is? a) (clr-is UnityEngine.SamsungTV a))
  (define (samsung-tv? a) (clr-is UnityEngine.SamsungTV a))
  (define-field-port
    touch-pad-mode-get
    touch-pad-mode-set!
    touch-pad-mode-update!
    (static: property:)
    UnityEngine.SamsungTV
    touchPadMode
    UnityEngine.SamsungTV+TouchPadMode)
  (define-field-port
    gesture-mode-get
    gesture-mode-set!
    gesture-mode-update!
    (static: property:)
    UnityEngine.SamsungTV
    gestureMode
    UnityEngine.SamsungTV+GestureMode)
  (define-field-port
    air-mouse-connected?
    #f
    #f
    (static: property:)
    UnityEngine.SamsungTV
    airMouseConnected
    System.Boolean)
  (define-field-port
    gesture-working?
    #f
    #f
    (static: property:)
    UnityEngine.SamsungTV
    gestureWorking
    System.Boolean)
  (define-field-port
    game-pad-mode-get
    game-pad-mode-set!
    game-pad-mode-update!
    (static: property:)
    UnityEngine.SamsungTV
    gamePadMode
    UnityEngine.SamsungTV+GamePadMode))
