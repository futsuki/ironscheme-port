(library (unity-engine animation-curve)
  (export new
          is?
          animation-curve?
          ease-in-out
          smooth-tangents
          linear
          move-key
          add-key
          remove-key
          evaluate
          keys-get
          keys-set!
          keys-update!
          item
          length
          pre-wrap-mode-get
          pre-wrap-mode-set!
          pre-wrap-mode-update!
          post-wrap-mode-get
          post-wrap-mode-set!
          post-wrap-mode-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.AnimationCurve a ...)))))
  (define (is? a) (clr-is UnityEngine.AnimationCurve a))
  (define (animation-curve? a) (clr-is UnityEngine.AnimationCurve a))
  (define-method-port
    ease-in-out
    UnityEngine.AnimationCurve
    EaseInOut
    (static:
      UnityEngine.AnimationCurve
      System.Single
      System.Single
      System.Single
      System.Single))
  (define-method-port
    smooth-tangents
    UnityEngine.AnimationCurve
    SmoothTangents
    (System.Void System.Int32 System.Single))
  (define-method-port
    linear
    UnityEngine.AnimationCurve
    Linear
    (static:
      UnityEngine.AnimationCurve
      System.Single
      System.Single
      System.Single
      System.Single))
  (define-method-port
    move-key
    UnityEngine.AnimationCurve
    MoveKey
    (System.Int32 System.Int32 UnityEngine.Keyframe))
  (define-method-port
    add-key
    UnityEngine.AnimationCurve
    AddKey
    (System.Int32 UnityEngine.Keyframe)
    (System.Int32 System.Single System.Single))
  (define-method-port
    remove-key
    UnityEngine.AnimationCurve
    RemoveKey
    (System.Void System.Int32))
  (define-method-port
    evaluate
    UnityEngine.AnimationCurve
    Evaluate
    (System.Single System.Single))
  (define-field-port
    keys-get
    keys-set!
    keys-update!
    (property:)
    UnityEngine.AnimationCurve
    keys
    UnityEngine.Keyframe[])
  (define-field-port
    item
    #f
    #f
    (property:)
    UnityEngine.AnimationCurve
    Item
    UnityEngine.Keyframe)
  (define-field-port
    length
    #f
    #f
    (property:)
    UnityEngine.AnimationCurve
    length
    System.Int32)
  (define-field-port
    pre-wrap-mode-get
    pre-wrap-mode-set!
    pre-wrap-mode-update!
    (property:)
    UnityEngine.AnimationCurve
    preWrapMode
    UnityEngine.WrapMode)
  (define-field-port
    post-wrap-mode-get
    post-wrap-mode-set!
    post-wrap-mode-update!
    (property:)
    UnityEngine.AnimationCurve
    postWrapMode
    UnityEngine.WrapMode))
