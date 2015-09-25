(library (unity-engine rect-offset)
  (export new
          is?
          rect-offset?
          add
          remove
          to-string
          left-get
          left-set!
          left-update!
          right-get
          right-set!
          right-update!
          top-get
          top-set!
          top-update!
          bottom-get
          bottom-set!
          bottom-update!
          horizontal
          vertical)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.RectOffset a ...)))))
  (define (is? a) (clr-is UnityEngine.RectOffset a))
  (define (rect-offset? a) (clr-is UnityEngine.RectOffset a))
  (define-method-port
    add
    UnityEngine.RectOffset
    Add
    (UnityEngine.Rect UnityEngine.Rect))
  (define-method-port
    remove
    UnityEngine.RectOffset
    Remove
    (UnityEngine.Rect UnityEngine.Rect))
  (define-method-port
    to-string
    UnityEngine.RectOffset
    ToString
    (System.String))
  (define-field-port
    left-get
    left-set!
    left-update!
    (property:)
    UnityEngine.RectOffset
    left
    System.Int32)
  (define-field-port
    right-get
    right-set!
    right-update!
    (property:)
    UnityEngine.RectOffset
    right
    System.Int32)
  (define-field-port
    top-get
    top-set!
    top-update!
    (property:)
    UnityEngine.RectOffset
    top
    System.Int32)
  (define-field-port
    bottom-get
    bottom-set!
    bottom-update!
    (property:)
    UnityEngine.RectOffset
    bottom
    System.Int32)
  (define-field-port
    horizontal
    #f
    #f
    (property:)
    UnityEngine.RectOffset
    horizontal
    System.Int32)
  (define-field-port
    vertical
    #f
    #f
    (property:)
    UnityEngine.RectOffset
    vertical
    System.Int32))
