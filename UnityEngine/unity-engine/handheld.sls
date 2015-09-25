(library (unity-engine handheld)
  (export new
          is?
          handheld?
          get-activity-indicator-style
          vibrate
          play-full-screen-movie?
          set-activity-indicator-style
          clear-shader-cache
          stop-activity-indicator
          start-activity-indicator
          use32-bit-display-buffer?-get
          use32-bit-display-buffer?-set!
          use32-bit-display-buffer?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Handheld a ...)))))
  (define (is? a) (clr-is UnityEngine.Handheld a))
  (define (handheld? a) (clr-is UnityEngine.Handheld a))
  (define-method-port
    get-activity-indicator-style
    UnityEngine.Handheld
    GetActivityIndicatorStyle
    (static: System.Int32))
  (define-method-port
    vibrate
    UnityEngine.Handheld
    Vibrate
    (static: System.Void))
  (define-method-port
    play-full-screen-movie?
    UnityEngine.Handheld
    PlayFullScreenMovie
    (static: System.Boolean System.String)
    (static: System.Boolean System.String UnityEngine.Color)
    (static:
      System.Boolean
      System.String
      UnityEngine.Color
      UnityEngine.FullScreenMovieControlMode)
    (static:
      System.Boolean
      System.String
      UnityEngine.Color
      UnityEngine.FullScreenMovieControlMode
      UnityEngine.FullScreenMovieScalingMode))
  (define-method-port
    set-activity-indicator-style
    UnityEngine.Handheld
    SetActivityIndicatorStyle
    (static: System.Void UnityEngine.AndroidActivityIndicatorStyle)
    (static: System.Void UnityEngine.iOS.ActivityIndicatorStyle))
  (define-method-port
    clear-shader-cache
    UnityEngine.Handheld
    ClearShaderCache
    (static: System.Void))
  (define-method-port
    stop-activity-indicator
    UnityEngine.Handheld
    StopActivityIndicator
    (static: System.Void))
  (define-method-port
    start-activity-indicator
    UnityEngine.Handheld
    StartActivityIndicator
    (static: System.Void))
  (define-field-port
    use32-bit-display-buffer?-get
    use32-bit-display-buffer?-set!
    use32-bit-display-buffer?-update!
    (static: property:)
    UnityEngine.Handheld
    use32BitDisplayBuffer
    System.Boolean))
