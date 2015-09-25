(library (unity-engine collision)
  (export new
          is?
          collision?
          get-enumerator
          relative-velocity
          rigidbody
          collider
          transform
          game-object
          contacts
          impact-force-sum
          friction-force-sum
          other)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Collision a ...)))))
  (define (is? a) (clr-is UnityEngine.Collision a))
  (define (collision? a) (clr-is UnityEngine.Collision a))
  (define-method-port
    get-enumerator
    UnityEngine.Collision
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-field-port
    relative-velocity
    #f
    #f
    (property:)
    UnityEngine.Collision
    relativeVelocity
    UnityEngine.Vector3)
  (define-field-port
    rigidbody
    #f
    #f
    (property:)
    UnityEngine.Collision
    rigidbody
    UnityEngine.Rigidbody)
  (define-field-port
    collider
    #f
    #f
    (property:)
    UnityEngine.Collision
    collider
    UnityEngine.Collider)
  (define-field-port
    transform
    #f
    #f
    (property:)
    UnityEngine.Collision
    transform
    UnityEngine.Transform)
  (define-field-port
    game-object
    #f
    #f
    (property:)
    UnityEngine.Collision
    gameObject
    UnityEngine.GameObject)
  (define-field-port
    contacts
    #f
    #f
    (property:)
    UnityEngine.Collision
    contacts
    UnityEngine.ContactPoint[])
  (define-field-port
    impact-force-sum
    #f
    #f
    (property:)
    UnityEngine.Collision
    impactForceSum
    UnityEngine.Vector3)
  (define-field-port
    friction-force-sum
    #f
    #f
    (property:)
    UnityEngine.Collision
    frictionForceSum
    UnityEngine.Vector3)
  (define-field-port
    other
    #f
    #f
    (property:)
    UnityEngine.Collision
    other
    UnityEngine.Component))
