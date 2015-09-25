(library (unity-engine i-os adbanner-view)
  (export new
          is?
          adbanner-view?
          is-available?
          loaded?
          visible?-get
          visible?-set!
          visible?-update!
          layout-get
          layout-set!
          layout-update!
          position-get
          position-set!
          position-update!
          size)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.iOS.ADBannerView a ...)))))
  (define (is? a) (clr-is UnityEngine.iOS.ADBannerView a))
  (define (adbanner-view? a) (clr-is UnityEngine.iOS.ADBannerView a))
  (define-method-port
    is-available?
    UnityEngine.iOS.ADBannerView
    IsAvailable
    (static: System.Boolean UnityEngine.iOS.ADBannerView+Type))
  (define-field-port
    loaded?
    #f
    #f
    (property:)
    UnityEngine.iOS.ADBannerView
    loaded
    System.Boolean)
  (define-field-port
    visible?-get
    visible?-set!
    visible?-update!
    (property:)
    UnityEngine.iOS.ADBannerView
    visible
    System.Boolean)
  (define-field-port
    layout-get
    layout-set!
    layout-update!
    (property:)
    UnityEngine.iOS.ADBannerView
    layout
    UnityEngine.iOS.ADBannerView+Layout)
  (define-field-port
    position-get
    position-set!
    position-update!
    (property:)
    UnityEngine.iOS.ADBannerView
    position
    UnityEngine.Vector2)
  (define-field-port
    size
    #f
    #f
    (property:)
    UnityEngine.iOS.ADBannerView
    size
    UnityEngine.Vector2))
