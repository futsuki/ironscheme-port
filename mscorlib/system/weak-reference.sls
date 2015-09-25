(library (system weak-reference)
  (export new
          is?
          weak-reference?
          get-object-data
          is-alive?
          target-get
          target-set!
          target-update!
          track-resurrection?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.WeakReference a ...)))))
  (define (is? a) (clr-is System.WeakReference a))
  (define (weak-reference? a) (clr-is System.WeakReference a))
  (define-method-port
    get-object-data
    System.WeakReference
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    is-alive?
    #f
    #f
    (property:)
    System.WeakReference
    IsAlive
    System.Boolean)
  (define-field-port
    target-get
    target-set!
    target-update!
    (property:)
    System.WeakReference
    Target
    System.Object)
  (define-field-port
    track-resurrection?
    #f
    #f
    (property:)
    System.WeakReference
    TrackResurrection
    System.Boolean))
