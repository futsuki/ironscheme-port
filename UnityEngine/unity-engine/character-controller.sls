(library (unity-engine character-controller)
  (export new
          is?
          character-controller?
          move
          simple-move?
          is-grounded?
          velocity
          collision-flags
          radius-get
          radius-set!
          radius-update!
          height-get
          height-set!
          height-update!
          center-get
          center-set!
          center-update!
          slope-limit-get
          slope-limit-set!
          slope-limit-update!
          step-offset-get
          step-offset-set!
          step-offset-update!
          detect-collisions?-get
          detect-collisions?-set!
          detect-collisions?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.CharacterController a ...)))))
  (define (is? a) (clr-is UnityEngine.CharacterController a))
  (define (character-controller? a)
    (clr-is UnityEngine.CharacterController a))
  (define-method-port
    move
    UnityEngine.CharacterController
    Move
    (UnityEngine.CollisionFlags UnityEngine.Vector3))
  (define-method-port
    simple-move?
    UnityEngine.CharacterController
    SimpleMove
    (System.Boolean UnityEngine.Vector3))
  (define-field-port
    is-grounded?
    #f
    #f
    (property:)
    UnityEngine.CharacterController
    isGrounded
    System.Boolean)
  (define-field-port
    velocity
    #f
    #f
    (property:)
    UnityEngine.CharacterController
    velocity
    UnityEngine.Vector3)
  (define-field-port
    collision-flags
    #f
    #f
    (property:)
    UnityEngine.CharacterController
    collisionFlags
    UnityEngine.CollisionFlags)
  (define-field-port
    radius-get
    radius-set!
    radius-update!
    (property:)
    UnityEngine.CharacterController
    radius
    System.Single)
  (define-field-port
    height-get
    height-set!
    height-update!
    (property:)
    UnityEngine.CharacterController
    height
    System.Single)
  (define-field-port
    center-get
    center-set!
    center-update!
    (property:)
    UnityEngine.CharacterController
    center
    UnityEngine.Vector3)
  (define-field-port
    slope-limit-get
    slope-limit-set!
    slope-limit-update!
    (property:)
    UnityEngine.CharacterController
    slopeLimit
    System.Single)
  (define-field-port
    step-offset-get
    step-offset-set!
    step-offset-update!
    (property:)
    UnityEngine.CharacterController
    stepOffset
    System.Single)
  (define-field-port
    detect-collisions?-get
    detect-collisions?-set!
    detect-collisions?-update!
    (property:)
    UnityEngine.CharacterController
    detectCollisions
    System.Boolean))
