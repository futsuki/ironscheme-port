(library (unity-engine ui animation-triggers)
  (export new
          is?
          animation-triggers?
          normal-trigger-get
          normal-trigger-set!
          normal-trigger-update!
          highlighted-trigger-get
          highlighted-trigger-set!
          highlighted-trigger-update!
          pressed-trigger-get
          pressed-trigger-set!
          pressed-trigger-update!
          disabled-trigger-get
          disabled-trigger-set!
          disabled-trigger-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.UI.AnimationTriggers a ...)))))
  (define (is? a) (clr-is UnityEngine.UI.AnimationTriggers a))
  (define (animation-triggers? a)
    (clr-is UnityEngine.UI.AnimationTriggers a))
  (define-field-port
    normal-trigger-get
    normal-trigger-set!
    normal-trigger-update!
    (property:)
    UnityEngine.UI.AnimationTriggers
    normalTrigger
    System.String)
  (define-field-port
    highlighted-trigger-get
    highlighted-trigger-set!
    highlighted-trigger-update!
    (property:)
    UnityEngine.UI.AnimationTriggers
    highlightedTrigger
    System.String)
  (define-field-port
    pressed-trigger-get
    pressed-trigger-set!
    pressed-trigger-update!
    (property:)
    UnityEngine.UI.AnimationTriggers
    pressedTrigger
    System.String)
  (define-field-port
    disabled-trigger-get
    disabled-trigger-set!
    disabled-trigger-update!
    (property:)
    UnityEngine.UI.AnimationTriggers
    disabledTrigger
    System.String))
