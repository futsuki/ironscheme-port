(library (unity-engine controller-collider-hit)
  (export new
          is?
          controller-collider-hit?
          controller
          collider
          rigidbody
          game-object
          transform
          point
          normal
          move-direction
          move-length)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.ControllerColliderHit a ...)))))
  (define (is? a) (clr-is UnityEngine.ControllerColliderHit a))
  (define (controller-collider-hit? a)
    (clr-is UnityEngine.ControllerColliderHit a))
  (define-field-port
    controller
    #f
    #f
    (property:)
    UnityEngine.ControllerColliderHit
    controller
    UnityEngine.CharacterController)
  (define-field-port
    collider
    #f
    #f
    (property:)
    UnityEngine.ControllerColliderHit
    collider
    UnityEngine.Collider)
  (define-field-port
    rigidbody
    #f
    #f
    (property:)
    UnityEngine.ControllerColliderHit
    rigidbody
    UnityEngine.Rigidbody)
  (define-field-port
    game-object
    #f
    #f
    (property:)
    UnityEngine.ControllerColliderHit
    gameObject
    UnityEngine.GameObject)
  (define-field-port
    transform
    #f
    #f
    (property:)
    UnityEngine.ControllerColliderHit
    transform
    UnityEngine.Transform)
  (define-field-port
    point
    #f
    #f
    (property:)
    UnityEngine.ControllerColliderHit
    point
    UnityEngine.Vector3)
  (define-field-port
    normal
    #f
    #f
    (property:)
    UnityEngine.ControllerColliderHit
    normal
    UnityEngine.Vector3)
  (define-field-port
    move-direction
    #f
    #f
    (property:)
    UnityEngine.ControllerColliderHit
    moveDirection
    UnityEngine.Vector3)
  (define-field-port
    move-length
    #f
    #f
    (property:)
    UnityEngine.ControllerColliderHit
    moveLength
    System.Single))
