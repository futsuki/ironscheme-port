(library (unity-engine async-operation)
  (export new
          is?
          async-operation?
          is-done?
          progress
          priority-get
          priority-set!
          priority-update!
          allow-scene-activation?-get
          allow-scene-activation?-set!
          allow-scene-activation?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.AsyncOperation a ...)))))
  (define (is? a) (clr-is UnityEngine.AsyncOperation a))
  (define (async-operation? a) (clr-is UnityEngine.AsyncOperation a))
  (define-field-port
    is-done?
    #f
    #f
    (property:)
    UnityEngine.AsyncOperation
    isDone
    System.Boolean)
  (define-field-port
    progress
    #f
    #f
    (property:)
    UnityEngine.AsyncOperation
    progress
    System.Single)
  (define-field-port
    priority-get
    priority-set!
    priority-update!
    (property:)
    UnityEngine.AsyncOperation
    priority
    System.Int32)
  (define-field-port
    allow-scene-activation?-get
    allow-scene-activation?-set!
    allow-scene-activation?-update!
    (property:)
    UnityEngine.AsyncOperation
    allowSceneActivation
    System.Boolean))
