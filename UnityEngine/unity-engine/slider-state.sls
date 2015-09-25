(library (unity-engine slider-state)
  (export new
          is?
          slider-state?
          drag-start-pos-get
          drag-start-pos-set!
          drag-start-pos-update!
          drag-start-value-get
          drag-start-value-set!
          drag-start-value-update!
          is-dragging?-get
          is-dragging?-set!
          is-dragging?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.SliderState a ...)))))
  (define (is? a) (clr-is UnityEngine.SliderState a))
  (define (slider-state? a) (clr-is UnityEngine.SliderState a))
  (define-field-port
    drag-start-pos-get
    drag-start-pos-set!
    drag-start-pos-update!
    ()
    UnityEngine.SliderState
    dragStartPos
    System.Single)
  (define-field-port
    drag-start-value-get
    drag-start-value-set!
    drag-start-value-update!
    ()
    UnityEngine.SliderState
    dragStartValue
    System.Single)
  (define-field-port
    is-dragging?-get
    is-dragging?-set!
    is-dragging?-update!
    ()
    UnityEngine.SliderState
    isDragging
    System.Boolean))
