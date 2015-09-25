(library (unity-engine joint2-d)
  (export new
          is?
          joint2-d?
          connected-body-get
          connected-body-set!
          connected-body-update!
          collide-connected?-get
          collide-connected?-set!
          collide-connected?-update!
          enable-collision?-get
          enable-collision?-set!
          enable-collision?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Joint2D a ...)))))
  (define (is? a) (clr-is UnityEngine.Joint2D a))
  (define (joint2-d? a) (clr-is UnityEngine.Joint2D a))
  (define-field-port
    connected-body-get
    connected-body-set!
    connected-body-update!
    (property:)
    UnityEngine.Joint2D
    connectedBody
    UnityEngine.Rigidbody2D)
  (define-field-port
    collide-connected?-get
    collide-connected?-set!
    collide-connected?-update!
    (property:)
    UnityEngine.Joint2D
    collideConnected
    System.Boolean)
  (define-field-port
    enable-collision?-get
    enable-collision?-set!
    enable-collision?-update!
    (property:)
    UnityEngine.Joint2D
    enableCollision
    System.Boolean))
