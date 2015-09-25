(library (unity-engine time)
  (export new
          is?
          time?
          time
          time-since-level-load
          delta-time
          fixed-time
          unscaled-time
          unscaled-delta-time
          fixed-delta-time-get
          fixed-delta-time-set!
          fixed-delta-time-update!
          maximum-delta-time-get
          maximum-delta-time-set!
          maximum-delta-time-update!
          smooth-delta-time
          time-scale-get
          time-scale-set!
          time-scale-update!
          frame-count
          rendered-frame-count
          realtime-since-startup
          capture-framerate-get
          capture-framerate-set!
          capture-framerate-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Time a ...)))))
  (define (is? a) (clr-is UnityEngine.Time a))
  (define (time? a) (clr-is UnityEngine.Time a))
  (define-field-port
    time
    #f
    #f
    (static: property:)
    UnityEngine.Time
    time
    System.Single)
  (define-field-port
    time-since-level-load
    #f
    #f
    (static: property:)
    UnityEngine.Time
    timeSinceLevelLoad
    System.Single)
  (define-field-port
    delta-time
    #f
    #f
    (static: property:)
    UnityEngine.Time
    deltaTime
    System.Single)
  (define-field-port
    fixed-time
    #f
    #f
    (static: property:)
    UnityEngine.Time
    fixedTime
    System.Single)
  (define-field-port
    unscaled-time
    #f
    #f
    (static: property:)
    UnityEngine.Time
    unscaledTime
    System.Single)
  (define-field-port
    unscaled-delta-time
    #f
    #f
    (static: property:)
    UnityEngine.Time
    unscaledDeltaTime
    System.Single)
  (define-field-port
    fixed-delta-time-get
    fixed-delta-time-set!
    fixed-delta-time-update!
    (static: property:)
    UnityEngine.Time
    fixedDeltaTime
    System.Single)
  (define-field-port
    maximum-delta-time-get
    maximum-delta-time-set!
    maximum-delta-time-update!
    (static: property:)
    UnityEngine.Time
    maximumDeltaTime
    System.Single)
  (define-field-port
    smooth-delta-time
    #f
    #f
    (static: property:)
    UnityEngine.Time
    smoothDeltaTime
    System.Single)
  (define-field-port
    time-scale-get
    time-scale-set!
    time-scale-update!
    (static: property:)
    UnityEngine.Time
    timeScale
    System.Single)
  (define-field-port
    frame-count
    #f
    #f
    (static: property:)
    UnityEngine.Time
    frameCount
    System.Int32)
  (define-field-port
    rendered-frame-count
    #f
    #f
    (static: property:)
    UnityEngine.Time
    renderedFrameCount
    System.Int32)
  (define-field-port
    realtime-since-startup
    #f
    #f
    (static: property:)
    UnityEngine.Time
    realtimeSinceStartup
    System.Single)
  (define-field-port
    capture-framerate-get
    capture-framerate-set!
    capture-framerate-update!
    (static: property:)
    UnityEngine.Time
    captureFramerate
    System.Int32))
