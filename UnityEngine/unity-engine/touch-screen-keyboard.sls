(library (unity-engine touch-screen-keyboard)
  (export new
          is?
          touch-screen-keyboard?
          open
          is-supported?
          text-get
          text-set!
          text-update!
          hide-input?-get
          hide-input?-set!
          hide-input?-update!
          active?-get
          active?-set!
          active?-update!
          done?
          was-canceled?
          area
          visible?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.TouchScreenKeyboard a ...)))))
  (define (is? a) (clr-is UnityEngine.TouchScreenKeyboard a))
  (define (touch-screen-keyboard? a)
    (clr-is UnityEngine.TouchScreenKeyboard a))
  (define-method-port
    open
    UnityEngine.TouchScreenKeyboard
    Open
    (static:
      UnityEngine.TouchScreenKeyboard
      System.String
      UnityEngine.TouchScreenKeyboardType
      System.Boolean
      System.Boolean
      System.Boolean
      System.Boolean
      System.String)
    (static: UnityEngine.TouchScreenKeyboard System.String)
    (static:
      UnityEngine.TouchScreenKeyboard
      System.String
      UnityEngine.TouchScreenKeyboardType)
    (static:
      UnityEngine.TouchScreenKeyboard
      System.String
      UnityEngine.TouchScreenKeyboardType
      System.Boolean)
    (static:
      UnityEngine.TouchScreenKeyboard
      System.String
      UnityEngine.TouchScreenKeyboardType
      System.Boolean
      System.Boolean)
    (static:
      UnityEngine.TouchScreenKeyboard
      System.String
      UnityEngine.TouchScreenKeyboardType
      System.Boolean
      System.Boolean
      System.Boolean)
    (static:
      UnityEngine.TouchScreenKeyboard
      System.String
      UnityEngine.TouchScreenKeyboardType
      System.Boolean
      System.Boolean
      System.Boolean
      System.Boolean))
  (define-field-port
    is-supported?
    #f
    #f
    (static: property:)
    UnityEngine.TouchScreenKeyboard
    isSupported
    System.Boolean)
  (define-field-port
    text-get
    text-set!
    text-update!
    (property:)
    UnityEngine.TouchScreenKeyboard
    text
    System.String)
  (define-field-port
    hide-input?-get
    hide-input?-set!
    hide-input?-update!
    (static: property:)
    UnityEngine.TouchScreenKeyboard
    hideInput
    System.Boolean)
  (define-field-port
    active?-get
    active?-set!
    active?-update!
    (property:)
    UnityEngine.TouchScreenKeyboard
    active
    System.Boolean)
  (define-field-port
    done?
    #f
    #f
    (property:)
    UnityEngine.TouchScreenKeyboard
    done
    System.Boolean)
  (define-field-port
    was-canceled?
    #f
    #f
    (property:)
    UnityEngine.TouchScreenKeyboard
    wasCanceled
    System.Boolean)
  (define-field-port
    area
    #f
    #f
    (static: property:)
    UnityEngine.TouchScreenKeyboard
    area
    UnityEngine.Rect)
  (define-field-port
    visible?
    #f
    #f
    (static: property:)
    UnityEngine.TouchScreenKeyboard
    visible
    System.Boolean))
