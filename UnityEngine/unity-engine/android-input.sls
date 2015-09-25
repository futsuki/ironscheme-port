(library (unity-engine android-input)
  (export is?
          android-input?
          get-secondary-touch
          touch-count-secondary
          secondary-touch-enabled?
          secondary-touch-width
          secondary-touch-height)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.AndroidInput a))
  (define (android-input? a) (clr-is UnityEngine.AndroidInput a))
  (define-method-port
    get-secondary-touch
    UnityEngine.AndroidInput
    GetSecondaryTouch
    (static: UnityEngine.Touch System.Int32))
  (define-field-port
    touch-count-secondary
    #f
    #f
    (static: property:)
    UnityEngine.AndroidInput
    touchCountSecondary
    System.Int32)
  (define-field-port
    secondary-touch-enabled?
    #f
    #f
    (static: property:)
    UnityEngine.AndroidInput
    secondaryTouchEnabled
    System.Boolean)
  (define-field-port
    secondary-touch-width
    #f
    #f
    (static: property:)
    UnityEngine.AndroidInput
    secondaryTouchWidth
    System.Int32)
  (define-field-port
    secondary-touch-height
    #f
    #f
    (static: property:)
    UnityEngine.AndroidInput
    secondaryTouchHeight
    System.Int32))
