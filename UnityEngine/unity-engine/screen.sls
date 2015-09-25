(library (unity-engine screen)
  (export new
          is?
          screen?
          set-resolution
          resolutions
          get-resolution
          show-cursor?-get
          show-cursor?-set!
          show-cursor?-update!
          lock-cursor?-get
          lock-cursor?-set!
          lock-cursor?-update!
          current-resolution
          width
          height
          dpi
          full-screen?-get
          full-screen?-set!
          full-screen?-update!
          autorotate-to-portrait?-get
          autorotate-to-portrait?-set!
          autorotate-to-portrait?-update!
          autorotate-to-portrait-upside-down?-get
          autorotate-to-portrait-upside-down?-set!
          autorotate-to-portrait-upside-down?-update!
          autorotate-to-landscape-left?-get
          autorotate-to-landscape-left?-set!
          autorotate-to-landscape-left?-update!
          autorotate-to-landscape-right?-get
          autorotate-to-landscape-right?-set!
          autorotate-to-landscape-right?-update!
          orientation-get
          orientation-set!
          orientation-update!
          sleep-timeout-get
          sleep-timeout-set!
          sleep-timeout-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Screen a ...)))))
  (define (is? a) (clr-is UnityEngine.Screen a))
  (define (screen? a) (clr-is UnityEngine.Screen a))
  (define-method-port
    set-resolution
    UnityEngine.Screen
    SetResolution
    (static: System.Void System.Int32 System.Int32 System.Boolean)
    (static:
      System.Void
      System.Int32
      System.Int32
      System.Boolean
      System.Int32))
  (define-field-port
    resolutions
    #f
    #f
    (static: property:)
    UnityEngine.Screen
    resolutions
    UnityEngine.Resolution[])
  (define-field-port
    get-resolution
    #f
    #f
    (static: property:)
    UnityEngine.Screen
    GetResolution
    UnityEngine.Resolution[])
  (define-field-port
    show-cursor?-get
    show-cursor?-set!
    show-cursor?-update!
    (static: property:)
    UnityEngine.Screen
    showCursor
    System.Boolean)
  (define-field-port
    lock-cursor?-get
    lock-cursor?-set!
    lock-cursor?-update!
    (static: property:)
    UnityEngine.Screen
    lockCursor
    System.Boolean)
  (define-field-port
    current-resolution
    #f
    #f
    (static: property:)
    UnityEngine.Screen
    currentResolution
    UnityEngine.Resolution)
  (define-field-port
    width
    #f
    #f
    (static: property:)
    UnityEngine.Screen
    width
    System.Int32)
  (define-field-port
    height
    #f
    #f
    (static: property:)
    UnityEngine.Screen
    height
    System.Int32)
  (define-field-port
    dpi
    #f
    #f
    (static: property:)
    UnityEngine.Screen
    dpi
    System.Single)
  (define-field-port
    full-screen?-get
    full-screen?-set!
    full-screen?-update!
    (static: property:)
    UnityEngine.Screen
    fullScreen
    System.Boolean)
  (define-field-port
    autorotate-to-portrait?-get
    autorotate-to-portrait?-set!
    autorotate-to-portrait?-update!
    (static: property:)
    UnityEngine.Screen
    autorotateToPortrait
    System.Boolean)
  (define-field-port
    autorotate-to-portrait-upside-down?-get
    autorotate-to-portrait-upside-down?-set!
    autorotate-to-portrait-upside-down?-update!
    (static: property:)
    UnityEngine.Screen
    autorotateToPortraitUpsideDown
    System.Boolean)
  (define-field-port
    autorotate-to-landscape-left?-get
    autorotate-to-landscape-left?-set!
    autorotate-to-landscape-left?-update!
    (static: property:)
    UnityEngine.Screen
    autorotateToLandscapeLeft
    System.Boolean)
  (define-field-port
    autorotate-to-landscape-right?-get
    autorotate-to-landscape-right?-set!
    autorotate-to-landscape-right?-update!
    (static: property:)
    UnityEngine.Screen
    autorotateToLandscapeRight
    System.Boolean)
  (define-field-port
    orientation-get
    orientation-set!
    orientation-update!
    (static: property:)
    UnityEngine.Screen
    orientation
    UnityEngine.ScreenOrientation)
  (define-field-port
    sleep-timeout-get
    sleep-timeout-set!
    sleep-timeout-update!
    (static: property:)
    UnityEngine.Screen
    sleepTimeout
    System.Int32))
