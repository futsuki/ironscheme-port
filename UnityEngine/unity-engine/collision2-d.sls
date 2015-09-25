(library (unity-engine collision2-d)
  (export new
          is?
          collision2-d?
          enabled?
          rigidbody
          collider
          transform
          game-object
          contacts
          relative-velocity)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Collision2D a ...)))))
  (define (is? a) (clr-is UnityEngine.Collision2D a))
  (define (collision2-d? a) (clr-is UnityEngine.Collision2D a))
  (define-field-port
    enabled?
    #f
    #f
    (property:)
    UnityEngine.Collision2D
    enabled
    System.Boolean)
  (define-field-port
    rigidbody
    #f
    #f
    (property:)
    UnityEngine.Collision2D
    rigidbody
    UnityEngine.Rigidbody2D)
  (define-field-port
    collider
    #f
    #f
    (property:)
    UnityEngine.Collision2D
    collider
    UnityEngine.Collider2D)
  (define-field-port
    transform
    #f
    #f
    (property:)
    UnityEngine.Collision2D
    transform
    UnityEngine.Transform)
  (define-field-port
    game-object
    #f
    #f
    (property:)
    UnityEngine.Collision2D
    gameObject
    UnityEngine.GameObject)
  (define-field-port
    contacts
    #f
    #f
    (property:)
    UnityEngine.Collision2D
    contacts
    UnityEngine.ContactPoint2D[])
  (define-field-port
    relative-velocity
    #f
    #f
    (property:)
    UnityEngine.Collision2D
    relativeVelocity
    UnityEngine.Vector2))
