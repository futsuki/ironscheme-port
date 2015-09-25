(library (unity-engine animator)
  (export new
          is?
          animator?
          get-next-animator-clip-info
          set-integer
          get-vector
          get-next-animator-state-info
          force-state-normalized-time
          set-ikhint-position
          has-state?
          set-trigger
          set-quaternion
          get-current-animator-state-info
          get-animator-transition-info
          get-next-animation-clip-state
          apply-builtin-root-motion
          set-ikposition
          is-controlled?
          get-current-animation-clip-state
          get-ikposition
          play
          get-integer
          set-bool
          get-layer-index
          set-look-at-position
          stop-playback
          update
          get-float
          cross-fade
          get-bone-transform
          get-current-animator-clip-info
          string-to-hash
          get-ikposition-weight
          get-bool?
          reset-trigger
          set-ikrotation
          start-recording
          set-ikhint-position-weight
          get-behaviour
          set-ikrotation-weight
          start-playback
          get-ikrotation-weight
          match-target
          rebind
          set-vector
          set-float
          get-layer-weight
          get-layer-name
          set-look-at-weight
          cross-fade-in-fixed-time
          set-ikposition-weight
          get-ikrotation
          set-target
          get-ikhint-position
          interrupt-match-target
          get-ikhint-position-weight
          stop-recording
          play-in-fixed-time
          get-behaviours
          get-quaternion
          set-layer-weight
          is-in-transition?
          is-parameter-controlled-by-curve?
          is-optimizable?
          is-human?
          has-root-motion?
          human-scale
          delta-position
          delta-rotation
          velocity
          angular-velocity
          root-position-get
          root-position-set!
          root-position-update!
          root-rotation-get
          root-rotation-set!
          root-rotation-update!
          apply-root-motion?-get
          apply-root-motion?-set!
          apply-root-motion?-update!
          linear-velocity-blending?-get
          linear-velocity-blending?-set!
          linear-velocity-blending?-update!
          animate-physics?-get
          animate-physics?-set!
          animate-physics?-update!
          update-mode-get
          update-mode-set!
          update-mode-update!
          has-transform-hierarchy?
          gravity-weight
          body-position-get
          body-position-set!
          body-position-update!
          body-rotation-get
          body-rotation-set!
          body-rotation-update!
          stabilize-feet?-get
          stabilize-feet?-set!
          stabilize-feet?-update!
          layer-count
          parameters
          feet-pivot-active-get
          feet-pivot-active-set!
          feet-pivot-active-update!
          pivot-weight
          pivot-position
          is-matching-target?
          speed-get
          speed-set!
          speed-update!
          target-position
          target-rotation
          culling-mode-get
          culling-mode-set!
          culling-mode-update!
          playback-time-get
          playback-time-set!
          playback-time-update!
          recorder-start-time-get
          recorder-start-time-set!
          recorder-start-time-update!
          recorder-stop-time-get
          recorder-stop-time-set!
          recorder-stop-time-update!
          recorder-mode
          runtime-animator-controller-get
          runtime-animator-controller-set!
          runtime-animator-controller-update!
          avatar-get
          avatar-set!
          avatar-update!
          layers-affect-mass-center?-get
          layers-affect-mass-center?-set!
          layers-affect-mass-center?-update!
          left-feet-bottom-height
          right-feet-bottom-height
          log-warnings?-get
          log-warnings?-set!
          log-warnings?-update!
          fire-events?-get
          fire-events?-set!
          fire-events?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Animator a ...)))))
  (define (is? a) (clr-is UnityEngine.Animator a))
  (define (animator? a) (clr-is UnityEngine.Animator a))
  (define-method-port
    get-next-animator-clip-info
    UnityEngine.Animator
    GetNextAnimatorClipInfo
    (UnityEngine.AnimatorClipInfo[] System.Int32))
  (define-method-port
    set-integer
    UnityEngine.Animator
    SetInteger
    (System.Void System.Int32 System.Int32)
    (System.Void System.String System.Int32))
  (define-method-port
    get-vector
    UnityEngine.Animator
    GetVector
    (UnityEngine.Vector3 System.Int32)
    (UnityEngine.Vector3 System.String))
  (define-method-port
    get-next-animator-state-info
    UnityEngine.Animator
    GetNextAnimatorStateInfo
    (UnityEngine.AnimatorStateInfo System.Int32))
  (define-method-port
    force-state-normalized-time
    UnityEngine.Animator
    ForceStateNormalizedTime
    (System.Void System.Single))
  (define-method-port
    set-ikhint-position
    UnityEngine.Animator
    SetIKHintPosition
    (System.Void UnityEngine.AvatarIKHint UnityEngine.Vector3))
  (define-method-port
    has-state?
    UnityEngine.Animator
    HasState
    (System.Boolean System.Int32 System.Int32))
  (define-method-port
    set-trigger
    UnityEngine.Animator
    SetTrigger
    (System.Void System.Int32)
    (System.Void System.String))
  (define-method-port
    set-quaternion
    UnityEngine.Animator
    SetQuaternion
    (System.Void System.Int32 UnityEngine.Quaternion)
    (System.Void System.String UnityEngine.Quaternion))
  (define-method-port
    get-current-animator-state-info
    UnityEngine.Animator
    GetCurrentAnimatorStateInfo
    (UnityEngine.AnimatorStateInfo System.Int32))
  (define-method-port
    get-animator-transition-info
    UnityEngine.Animator
    GetAnimatorTransitionInfo
    (UnityEngine.AnimatorTransitionInfo System.Int32))
  (define-method-port
    get-next-animation-clip-state
    UnityEngine.Animator
    GetNextAnimationClipState
    (UnityEngine.AnimatorClipInfo[] System.Int32))
  (define-method-port
    apply-builtin-root-motion
    UnityEngine.Animator
    ApplyBuiltinRootMotion
    (System.Void))
  (define-method-port
    set-ikposition
    UnityEngine.Animator
    SetIKPosition
    (System.Void UnityEngine.AvatarIKGoal UnityEngine.Vector3))
  (define-method-port
    is-controlled?
    UnityEngine.Animator
    IsControlled
    (System.Boolean UnityEngine.Transform))
  (define-method-port
    get-current-animation-clip-state
    UnityEngine.Animator
    GetCurrentAnimationClipState
    (UnityEngine.AnimatorClipInfo[] System.Int32))
  (define-method-port
    get-ikposition
    UnityEngine.Animator
    GetIKPosition
    (UnityEngine.Vector3 UnityEngine.AvatarIKGoal))
  (define-method-port
    play
    UnityEngine.Animator
    Play
    (System.Void System.Int32)
    (System.Void System.Int32 System.Int32)
    (System.Void System.Int32 System.Int32 System.Single)
    (System.Void System.String System.Int32 System.Single)
    (System.Void System.String)
    (System.Void System.String System.Int32))
  (define-method-port
    get-integer
    UnityEngine.Animator
    GetInteger
    (System.Int32 System.Int32)
    (System.Int32 System.String))
  (define-method-port
    set-bool
    UnityEngine.Animator
    SetBool
    (System.Void System.Int32 System.Boolean)
    (System.Void System.String System.Boolean))
  (define-method-port
    get-layer-index
    UnityEngine.Animator
    GetLayerIndex
    (System.Int32 System.String))
  (define-method-port
    set-look-at-position
    UnityEngine.Animator
    SetLookAtPosition
    (System.Void UnityEngine.Vector3))
  (define-method-port
    stop-playback
    UnityEngine.Animator
    StopPlayback
    (System.Void))
  (define-method-port
    update
    UnityEngine.Animator
    Update
    (System.Void System.Single))
  (define-method-port
    get-float
    UnityEngine.Animator
    GetFloat
    (System.Single System.Int32)
    (System.Single System.String))
  (define-method-port
    cross-fade
    UnityEngine.Animator
    CrossFade
    (System.Void System.Int32 System.Single)
    (System.Void System.Int32 System.Single System.Int32)
    (System.Void System.Int32 System.Single System.Int32 System.Single)
    (System.Void System.String System.Single System.Int32 System.Single)
    (System.Void System.String System.Single)
    (System.Void System.String System.Single System.Int32))
  (define-method-port
    get-bone-transform
    UnityEngine.Animator
    GetBoneTransform
    (UnityEngine.Transform UnityEngine.HumanBodyBones))
  (define-method-port
    get-current-animator-clip-info
    UnityEngine.Animator
    GetCurrentAnimatorClipInfo
    (UnityEngine.AnimatorClipInfo[] System.Int32))
  (define-method-port
    string-to-hash
    UnityEngine.Animator
    StringToHash
    (static: System.Int32 System.String))
  (define-method-port
    get-ikposition-weight
    UnityEngine.Animator
    GetIKPositionWeight
    (System.Single UnityEngine.AvatarIKGoal))
  (define-method-port
    get-bool?
    UnityEngine.Animator
    GetBool
    (System.Boolean System.Int32)
    (System.Boolean System.String))
  (define-method-port
    reset-trigger
    UnityEngine.Animator
    ResetTrigger
    (System.Void System.Int32)
    (System.Void System.String))
  (define-method-port
    set-ikrotation
    UnityEngine.Animator
    SetIKRotation
    (System.Void UnityEngine.AvatarIKGoal UnityEngine.Quaternion))
  (define-method-port
    start-recording
    UnityEngine.Animator
    StartRecording
    (System.Void System.Int32))
  (define-method-port
    set-ikhint-position-weight
    UnityEngine.Animator
    SetIKHintPositionWeight
    (System.Void UnityEngine.AvatarIKHint System.Single))
  (define-method-port get-behaviour UnityEngine.Animator GetBehaviour)
  (define-method-port
    set-ikrotation-weight
    UnityEngine.Animator
    SetIKRotationWeight
    (System.Void UnityEngine.AvatarIKGoal System.Single))
  (define-method-port
    start-playback
    UnityEngine.Animator
    StartPlayback
    (System.Void))
  (define-method-port
    get-ikrotation-weight
    UnityEngine.Animator
    GetIKRotationWeight
    (System.Single UnityEngine.AvatarIKGoal))
  (define-method-port
    match-target
    UnityEngine.Animator
    MatchTarget
    (System.Void
      UnityEngine.Vector3
      UnityEngine.Quaternion
      UnityEngine.AvatarTarget
      UnityEngine.MatchTargetWeightMask
      System.Single)
    (System.Void
      UnityEngine.Vector3
      UnityEngine.Quaternion
      UnityEngine.AvatarTarget
      UnityEngine.MatchTargetWeightMask
      System.Single
      System.Single))
  (define-method-port rebind UnityEngine.Animator Rebind (System.Void))
  (define-method-port
    set-vector
    UnityEngine.Animator
    SetVector
    (System.Void System.Int32 UnityEngine.Vector3)
    (System.Void System.String UnityEngine.Vector3))
  (define-method-port
    set-float
    UnityEngine.Animator
    SetFloat
    (System.Void System.Int32 System.Single System.Single System.Single)
    (System.Void System.Int32 System.Single)
    (System.Void
      System.String
      System.Single
      System.Single
      System.Single)
    (System.Void System.String System.Single))
  (define-method-port
    get-layer-weight
    UnityEngine.Animator
    GetLayerWeight
    (System.Single System.Int32))
  (define-method-port
    get-layer-name
    UnityEngine.Animator
    GetLayerName
    (System.String System.Int32))
  (define-method-port
    set-look-at-weight
    UnityEngine.Animator
    SetLookAtWeight
    (System.Void
      System.Single
      System.Single
      System.Single
      System.Single
      System.Single)
    (System.Void System.Single)
    (System.Void System.Single System.Single)
    (System.Void System.Single System.Single System.Single)
    (System.Void
      System.Single
      System.Single
      System.Single
      System.Single))
  (define-method-port
    cross-fade-in-fixed-time
    UnityEngine.Animator
    CrossFadeInFixedTime
    (System.Void System.Int32 System.Single)
    (System.Void System.Int32 System.Single System.Int32)
    (System.Void System.Int32 System.Single System.Int32 System.Single)
    (System.Void System.String System.Single System.Int32 System.Single)
    (System.Void System.String System.Single)
    (System.Void System.String System.Single System.Int32))
  (define-method-port
    set-ikposition-weight
    UnityEngine.Animator
    SetIKPositionWeight
    (System.Void UnityEngine.AvatarIKGoal System.Single))
  (define-method-port
    get-ikrotation
    UnityEngine.Animator
    GetIKRotation
    (UnityEngine.Quaternion UnityEngine.AvatarIKGoal))
  (define-method-port
    set-target
    UnityEngine.Animator
    SetTarget
    (System.Void UnityEngine.AvatarTarget System.Single))
  (define-method-port
    get-ikhint-position
    UnityEngine.Animator
    GetIKHintPosition
    (UnityEngine.Vector3 UnityEngine.AvatarIKHint))
  (define-method-port
    interrupt-match-target
    UnityEngine.Animator
    InterruptMatchTarget
    (System.Void)
    (System.Void System.Boolean))
  (define-method-port
    get-ikhint-position-weight
    UnityEngine.Animator
    GetIKHintPositionWeight
    (System.Single UnityEngine.AvatarIKHint))
  (define-method-port
    stop-recording
    UnityEngine.Animator
    StopRecording
    (System.Void))
  (define-method-port
    play-in-fixed-time
    UnityEngine.Animator
    PlayInFixedTime
    (System.Void System.Int32)
    (System.Void System.Int32 System.Int32)
    (System.Void System.Int32 System.Int32 System.Single)
    (System.Void System.String System.Int32 System.Single)
    (System.Void System.String)
    (System.Void System.String System.Int32))
  (define-method-port get-behaviours UnityEngine.Animator GetBehaviours)
  (define-method-port
    get-quaternion
    UnityEngine.Animator
    GetQuaternion
    (UnityEngine.Quaternion System.Int32)
    (UnityEngine.Quaternion System.String))
  (define-method-port
    set-layer-weight
    UnityEngine.Animator
    SetLayerWeight
    (System.Void System.Int32 System.Single))
  (define-method-port
    is-in-transition?
    UnityEngine.Animator
    IsInTransition
    (System.Boolean System.Int32))
  (define-method-port
    is-parameter-controlled-by-curve?
    UnityEngine.Animator
    IsParameterControlledByCurve
    (System.Boolean System.Int32)
    (System.Boolean System.String))
  (define-field-port
    is-optimizable?
    #f
    #f
    (property:)
    UnityEngine.Animator
    isOptimizable
    System.Boolean)
  (define-field-port
    is-human?
    #f
    #f
    (property:)
    UnityEngine.Animator
    isHuman
    System.Boolean)
  (define-field-port
    has-root-motion?
    #f
    #f
    (property:)
    UnityEngine.Animator
    hasRootMotion
    System.Boolean)
  (define-field-port
    human-scale
    #f
    #f
    (property:)
    UnityEngine.Animator
    humanScale
    System.Single)
  (define-field-port
    delta-position
    #f
    #f
    (property:)
    UnityEngine.Animator
    deltaPosition
    UnityEngine.Vector3)
  (define-field-port
    delta-rotation
    #f
    #f
    (property:)
    UnityEngine.Animator
    deltaRotation
    UnityEngine.Quaternion)
  (define-field-port
    velocity
    #f
    #f
    (property:)
    UnityEngine.Animator
    velocity
    UnityEngine.Vector3)
  (define-field-port
    angular-velocity
    #f
    #f
    (property:)
    UnityEngine.Animator
    angularVelocity
    UnityEngine.Vector3)
  (define-field-port
    root-position-get
    root-position-set!
    root-position-update!
    (property:)
    UnityEngine.Animator
    rootPosition
    UnityEngine.Vector3)
  (define-field-port
    root-rotation-get
    root-rotation-set!
    root-rotation-update!
    (property:)
    UnityEngine.Animator
    rootRotation
    UnityEngine.Quaternion)
  (define-field-port
    apply-root-motion?-get
    apply-root-motion?-set!
    apply-root-motion?-update!
    (property:)
    UnityEngine.Animator
    applyRootMotion
    System.Boolean)
  (define-field-port
    linear-velocity-blending?-get
    linear-velocity-blending?-set!
    linear-velocity-blending?-update!
    (property:)
    UnityEngine.Animator
    linearVelocityBlending
    System.Boolean)
  (define-field-port
    animate-physics?-get
    animate-physics?-set!
    animate-physics?-update!
    (property:)
    UnityEngine.Animator
    animatePhysics
    System.Boolean)
  (define-field-port
    update-mode-get
    update-mode-set!
    update-mode-update!
    (property:)
    UnityEngine.Animator
    updateMode
    UnityEngine.AnimatorUpdateMode)
  (define-field-port
    has-transform-hierarchy?
    #f
    #f
    (property:)
    UnityEngine.Animator
    hasTransformHierarchy
    System.Boolean)
  (define-field-port
    gravity-weight
    #f
    #f
    (property:)
    UnityEngine.Animator
    gravityWeight
    System.Single)
  (define-field-port
    body-position-get
    body-position-set!
    body-position-update!
    (property:)
    UnityEngine.Animator
    bodyPosition
    UnityEngine.Vector3)
  (define-field-port
    body-rotation-get
    body-rotation-set!
    body-rotation-update!
    (property:)
    UnityEngine.Animator
    bodyRotation
    UnityEngine.Quaternion)
  (define-field-port
    stabilize-feet?-get
    stabilize-feet?-set!
    stabilize-feet?-update!
    (property:)
    UnityEngine.Animator
    stabilizeFeet
    System.Boolean)
  (define-field-port
    layer-count
    #f
    #f
    (property:)
    UnityEngine.Animator
    layerCount
    System.Int32)
  (define-field-port
    parameters
    #f
    #f
    (property:)
    UnityEngine.Animator
    parameters
    UnityEngine.AnimatorControllerParameter[])
  (define-field-port
    feet-pivot-active-get
    feet-pivot-active-set!
    feet-pivot-active-update!
    (property:)
    UnityEngine.Animator
    feetPivotActive
    System.Single)
  (define-field-port
    pivot-weight
    #f
    #f
    (property:)
    UnityEngine.Animator
    pivotWeight
    System.Single)
  (define-field-port
    pivot-position
    #f
    #f
    (property:)
    UnityEngine.Animator
    pivotPosition
    UnityEngine.Vector3)
  (define-field-port
    is-matching-target?
    #f
    #f
    (property:)
    UnityEngine.Animator
    isMatchingTarget
    System.Boolean)
  (define-field-port
    speed-get
    speed-set!
    speed-update!
    (property:)
    UnityEngine.Animator
    speed
    System.Single)
  (define-field-port
    target-position
    #f
    #f
    (property:)
    UnityEngine.Animator
    targetPosition
    UnityEngine.Vector3)
  (define-field-port
    target-rotation
    #f
    #f
    (property:)
    UnityEngine.Animator
    targetRotation
    UnityEngine.Quaternion)
  (define-field-port
    culling-mode-get
    culling-mode-set!
    culling-mode-update!
    (property:)
    UnityEngine.Animator
    cullingMode
    UnityEngine.AnimatorCullingMode)
  (define-field-port
    playback-time-get
    playback-time-set!
    playback-time-update!
    (property:)
    UnityEngine.Animator
    playbackTime
    System.Single)
  (define-field-port
    recorder-start-time-get
    recorder-start-time-set!
    recorder-start-time-update!
    (property:)
    UnityEngine.Animator
    recorderStartTime
    System.Single)
  (define-field-port
    recorder-stop-time-get
    recorder-stop-time-set!
    recorder-stop-time-update!
    (property:)
    UnityEngine.Animator
    recorderStopTime
    System.Single)
  (define-field-port
    recorder-mode
    #f
    #f
    (property:)
    UnityEngine.Animator
    recorderMode
    UnityEngine.AnimatorRecorderMode)
  (define-field-port
    runtime-animator-controller-get
    runtime-animator-controller-set!
    runtime-animator-controller-update!
    (property:)
    UnityEngine.Animator
    runtimeAnimatorController
    UnityEngine.RuntimeAnimatorController)
  (define-field-port
    avatar-get
    avatar-set!
    avatar-update!
    (property:)
    UnityEngine.Animator
    avatar
    UnityEngine.Avatar)
  (define-field-port
    layers-affect-mass-center?-get
    layers-affect-mass-center?-set!
    layers-affect-mass-center?-update!
    (property:)
    UnityEngine.Animator
    layersAffectMassCenter
    System.Boolean)
  (define-field-port
    left-feet-bottom-height
    #f
    #f
    (property:)
    UnityEngine.Animator
    leftFeetBottomHeight
    System.Single)
  (define-field-port
    right-feet-bottom-height
    #f
    #f
    (property:)
    UnityEngine.Animator
    rightFeetBottomHeight
    System.Single)
  (define-field-port
    log-warnings?-get
    log-warnings?-set!
    log-warnings?-update!
    (property:)
    UnityEngine.Animator
    logWarnings
    System.Boolean)
  (define-field-port
    fire-events?-get
    fire-events?-set!
    fire-events?-update!
    (property:)
    UnityEngine.Animator
    fireEvents
    System.Boolean))
