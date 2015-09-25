(library (unity-engine tree-prototype)
  (export new
          is?
          tree-prototype?
          prefab-get
          prefab-set!
          prefab-update!
          bend-factor-get
          bend-factor-set!
          bend-factor-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.TreePrototype a ...)))))
  (define (is? a) (clr-is UnityEngine.TreePrototype a))
  (define (tree-prototype? a) (clr-is UnityEngine.TreePrototype a))
  (define-field-port
    prefab-get
    prefab-set!
    prefab-update!
    (property:)
    UnityEngine.TreePrototype
    prefab
    UnityEngine.GameObject)
  (define-field-port
    bend-factor-get
    bend-factor-set!
    bend-factor-update!
    (property:)
    UnityEngine.TreePrototype
    bendFactor
    System.Single))
