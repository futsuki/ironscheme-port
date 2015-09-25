(library (unity-engine animation)
  (export new
          is?
          animation?
          rewind
          cross-fade-queued
          blend
          play?
          is-playing?
          add-clip
          cross-fade
          remove-clip
          get-enumerator
          get-clip
          sync-layer
          stop
          sample
          play-queued
          get-clip-count
          clip-get
          clip-set!
          clip-update!
          play-automatically?-get
          play-automatically?-set!
          play-automatically?-update!
          wrap-mode-get
          wrap-mode-set!
          wrap-mode-update!
          is-playing?
          item
          animate-physics?-get
          animate-physics?-set!
          animate-physics?-update!
          animate-only-if-visible?-get
          animate-only-if-visible?-set!
          animate-only-if-visible?-update!
          culling-type-get
          culling-type-set!
          culling-type-update!
          local-bounds-get
          local-bounds-set!
          local-bounds-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Animation a ...)))))
  (define (is? a) (clr-is UnityEngine.Animation a))
  (define (animation? a) (clr-is UnityEngine.Animation a))
  (define-method-port
    rewind
    UnityEngine.Animation
    Rewind
    (System.Void)
    (System.Void System.String))
  (define-method-port
    cross-fade-queued
    UnityEngine.Animation
    CrossFadeQueued
    (UnityEngine.AnimationState System.String)
    (UnityEngine.AnimationState System.String System.Single)
    (UnityEngine.AnimationState
      System.String
      System.Single
      UnityEngine.QueueMode)
    (UnityEngine.AnimationState
      System.String
      System.Single
      UnityEngine.QueueMode
      UnityEngine.PlayMode))
  (define-method-port
    blend
    UnityEngine.Animation
    Blend
    (System.Void System.String)
    (System.Void System.String System.Single)
    (System.Void System.String System.Single System.Single))
  (define-method-port
    play?
    UnityEngine.Animation
    Play
    (System.Boolean System.String UnityEngine.AnimationPlayMode)
    (System.Boolean UnityEngine.AnimationPlayMode)
    (System.Boolean System.String)
    (System.Boolean System.String UnityEngine.PlayMode)
    (System.Boolean UnityEngine.PlayMode)
    (System.Boolean))
  (define-method-port
    is-playing?
    UnityEngine.Animation
    IsPlaying
    (System.Boolean System.String))
  (define-method-port
    add-clip
    UnityEngine.Animation
    AddClip
    (System.Void
      UnityEngine.AnimationClip
      System.String
      System.Int32
      System.Int32)
    (System.Void
      UnityEngine.AnimationClip
      System.String
      System.Int32
      System.Int32
      System.Boolean)
    (System.Void UnityEngine.AnimationClip System.String))
  (define-method-port
    cross-fade
    UnityEngine.Animation
    CrossFade
    (System.Void System.String)
    (System.Void System.String System.Single)
    (System.Void System.String System.Single UnityEngine.PlayMode))
  (define-method-port
    remove-clip
    UnityEngine.Animation
    RemoveClip
    (System.Void System.String)
    (System.Void UnityEngine.AnimationClip))
  (define-method-port
    get-enumerator
    UnityEngine.Animation
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    get-clip
    UnityEngine.Animation
    GetClip
    (UnityEngine.AnimationClip System.String))
  (define-method-port
    sync-layer
    UnityEngine.Animation
    SyncLayer
    (System.Void System.Int32))
  (define-method-port
    stop
    UnityEngine.Animation
    Stop
    (System.Void System.String)
    (System.Void))
  (define-method-port sample UnityEngine.Animation Sample (System.Void))
  (define-method-port
    play-queued
    UnityEngine.Animation
    PlayQueued
    (UnityEngine.AnimationState System.String)
    (UnityEngine.AnimationState System.String UnityEngine.QueueMode)
    (UnityEngine.AnimationState
      System.String
      UnityEngine.QueueMode
      UnityEngine.PlayMode))
  (define-method-port
    get-clip-count
    UnityEngine.Animation
    GetClipCount
    (System.Int32))
  (define-field-port
    clip-get
    clip-set!
    clip-update!
    (property:)
    UnityEngine.Animation
    clip
    UnityEngine.AnimationClip)
  (define-field-port
    play-automatically?-get
    play-automatically?-set!
    play-automatically?-update!
    (property:)
    UnityEngine.Animation
    playAutomatically
    System.Boolean)
  (define-field-port
    wrap-mode-get
    wrap-mode-set!
    wrap-mode-update!
    (property:)
    UnityEngine.Animation
    wrapMode
    UnityEngine.WrapMode)
  (define-field-port
    is-playing?
    #f
    #f
    (property:)
    UnityEngine.Animation
    isPlaying
    System.Boolean)
  (define-field-port
    item
    #f
    #f
    (property:)
    UnityEngine.Animation
    Item
    UnityEngine.AnimationState)
  (define-field-port
    animate-physics?-get
    animate-physics?-set!
    animate-physics?-update!
    (property:)
    UnityEngine.Animation
    animatePhysics
    System.Boolean)
  (define-field-port
    animate-only-if-visible?-get
    animate-only-if-visible?-set!
    animate-only-if-visible?-update!
    (property:)
    UnityEngine.Animation
    animateOnlyIfVisible
    System.Boolean)
  (define-field-port
    culling-type-get
    culling-type-set!
    culling-type-update!
    (property:)
    UnityEngine.Animation
    cullingType
    UnityEngine.AnimationCullingType)
  (define-field-port
    local-bounds-get
    local-bounds-set!
    local-bounds-update!
    (property:)
    UnityEngine.Animation
    localBounds
    UnityEngine.Bounds))
