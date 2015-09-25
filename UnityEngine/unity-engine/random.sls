(library (unity-engine random)
  (export new
          is?
          random?
          range
          random-range
          seed-get
          seed-set!
          seed-update!
          value
          inside-unit-sphere
          inside-unit-circle
          on-unit-sphere
          rotation
          rotation-uniform)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Random a ...)))))
  (define (is? a) (clr-is UnityEngine.Random a))
  (define (random? a) (clr-is UnityEngine.Random a))
  (define-method-port
    range
    UnityEngine.Random
    Range
    (static: System.Int32 System.Int32 System.Int32)
    (static: System.Single System.Single System.Single))
  (define-method-port
    random-range
    UnityEngine.Random
    RandomRange
    (static: System.Int32 System.Int32 System.Int32)
    (static: System.Single System.Single System.Single))
  (define-field-port
    seed-get
    seed-set!
    seed-update!
    (static: property:)
    UnityEngine.Random
    seed
    System.Int32)
  (define-field-port
    value
    #f
    #f
    (static: property:)
    UnityEngine.Random
    value
    System.Single)
  (define-field-port
    inside-unit-sphere
    #f
    #f
    (static: property:)
    UnityEngine.Random
    insideUnitSphere
    UnityEngine.Vector3)
  (define-field-port
    inside-unit-circle
    #f
    #f
    (static: property:)
    UnityEngine.Random
    insideUnitCircle
    UnityEngine.Vector2)
  (define-field-port
    on-unit-sphere
    #f
    #f
    (static: property:)
    UnityEngine.Random
    onUnitSphere
    UnityEngine.Vector3)
  (define-field-port
    rotation
    #f
    #f
    (static: property:)
    UnityEngine.Random
    rotation
    UnityEngine.Quaternion)
  (define-field-port
    rotation-uniform
    #f
    #f
    (static: property:)
    UnityEngine.Random
    rotationUniform
    UnityEngine.Quaternion))
