(library (unity-engine animation-clip)
  (export new
          is?
          animation-clip?
          add-event
          ensure-quaternion-continuity
          set-curve
          sample-animation
          clear-curves
          length
          frame-rate-get
          frame-rate-set!
          frame-rate-update!
          wrap-mode-get
          wrap-mode-set!
          wrap-mode-update!
          local-bounds-get
          local-bounds-set!
          local-bounds-update!
          legacy?-get
          legacy?-set!
          legacy?-update!
          human-motion?
          events-get
          events-set!
          events-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.AnimationClip a ...)))))
  (define (is? a) (clr-is UnityEngine.AnimationClip a))
  (define (animation-clip? a) (clr-is UnityEngine.AnimationClip a))
  (define-method-port
    add-event
    UnityEngine.AnimationClip
    AddEvent
    (System.Void UnityEngine.AnimationEvent))
  (define-method-port
    ensure-quaternion-continuity
    UnityEngine.AnimationClip
    EnsureQuaternionContinuity
    (System.Void))
  (define-method-port
    set-curve
    UnityEngine.AnimationClip
    SetCurve
    (System.Void
      System.String
      System.Type
      System.String
      UnityEngine.AnimationCurve))
  (define-method-port
    sample-animation
    UnityEngine.AnimationClip
    SampleAnimation
    (System.Void UnityEngine.GameObject System.Single))
  (define-method-port
    clear-curves
    UnityEngine.AnimationClip
    ClearCurves
    (System.Void))
  (define-field-port
    length
    #f
    #f
    (property:)
    UnityEngine.AnimationClip
    length
    System.Single)
  (define-field-port
    frame-rate-get
    frame-rate-set!
    frame-rate-update!
    (property:)
    UnityEngine.AnimationClip
    frameRate
    System.Single)
  (define-field-port
    wrap-mode-get
    wrap-mode-set!
    wrap-mode-update!
    (property:)
    UnityEngine.AnimationClip
    wrapMode
    UnityEngine.WrapMode)
  (define-field-port
    local-bounds-get
    local-bounds-set!
    local-bounds-update!
    (property:)
    UnityEngine.AnimationClip
    localBounds
    UnityEngine.Bounds)
  (define-field-port
    legacy?-get
    legacy?-set!
    legacy?-update!
    (property:)
    UnityEngine.AnimationClip
    legacy
    System.Boolean)
  (define-field-port
    human-motion?
    #f
    #f
    (property:)
    UnityEngine.AnimationClip
    humanMotion
    System.Boolean)
  (define-field-port
    events-get
    events-set!
    events-update!
    (property:)
    UnityEngine.AnimationClip
    events
    UnityEngine.AnimationEvent[]))
