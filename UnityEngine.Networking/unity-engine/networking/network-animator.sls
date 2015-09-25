(library (unity-engine networking network-animator)
  (export new
          is?
          network-animator?
          on-start-server
          set-trigger
          on-deserialize
          set-parameter-auto-send
          on-serialize?
          on-start-local-player
          get-parameter-auto-send?
          param0-get
          param0-set!
          param0-update!
          param1-get
          param1-set!
          param1-update!
          param2-get
          param2-set!
          param2-update!
          param3-get
          param3-set!
          param3-update!
          param4-get
          param4-set!
          param4-update!
          param5-get
          param5-set!
          param5-update!
          animator-get
          animator-set!
          animator-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.NetworkAnimator a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.NetworkAnimator a))
  (define (network-animator? a)
    (clr-is UnityEngine.Networking.NetworkAnimator a))
  (define-method-port
    on-start-server
    UnityEngine.Networking.NetworkAnimator
    OnStartServer
    (System.Void))
  (define-method-port
    set-trigger
    UnityEngine.Networking.NetworkAnimator
    SetTrigger
    (System.Void System.Int32)
    (System.Void System.String))
  (define-method-port
    on-deserialize
    UnityEngine.Networking.NetworkAnimator
    OnDeserialize
    (System.Void UnityEngine.Networking.NetworkReader System.Boolean))
  (define-method-port
    set-parameter-auto-send
    UnityEngine.Networking.NetworkAnimator
    SetParameterAutoSend
    (System.Void System.Int32 System.Boolean))
  (define-method-port
    on-serialize?
    UnityEngine.Networking.NetworkAnimator
    OnSerialize
    (System.Boolean
      UnityEngine.Networking.NetworkWriter
      System.Boolean))
  (define-method-port
    on-start-local-player
    UnityEngine.Networking.NetworkAnimator
    OnStartLocalPlayer
    (System.Void))
  (define-method-port
    get-parameter-auto-send?
    UnityEngine.Networking.NetworkAnimator
    GetParameterAutoSend
    (System.Boolean System.Int32))
  (define-field-port
    param0-get
    param0-set!
    param0-update!
    ()
    UnityEngine.Networking.NetworkAnimator
    param0
    System.String)
  (define-field-port
    param1-get
    param1-set!
    param1-update!
    ()
    UnityEngine.Networking.NetworkAnimator
    param1
    System.String)
  (define-field-port
    param2-get
    param2-set!
    param2-update!
    ()
    UnityEngine.Networking.NetworkAnimator
    param2
    System.String)
  (define-field-port
    param3-get
    param3-set!
    param3-update!
    ()
    UnityEngine.Networking.NetworkAnimator
    param3
    System.String)
  (define-field-port
    param4-get
    param4-set!
    param4-update!
    ()
    UnityEngine.Networking.NetworkAnimator
    param4
    System.String)
  (define-field-port
    param5-get
    param5-set!
    param5-update!
    ()
    UnityEngine.Networking.NetworkAnimator
    param5
    System.String)
  (define-field-port
    animator-get
    animator-set!
    animator-update!
    (property:)
    UnityEngine.Networking.NetworkAnimator
    animator
    UnityEngine.Animator))
