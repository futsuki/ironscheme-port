(library (unity-engine joint)
  (export new
          is?
          joint?
          connected-body-get
          connected-body-set!
          connected-body-update!
          axis-get
          axis-set!
          axis-update!
          anchor-get
          anchor-set!
          anchor-update!
          connected-anchor-get
          connected-anchor-set!
          connected-anchor-update!
          auto-configure-connected-anchor?-get
          auto-configure-connected-anchor?-set!
          auto-configure-connected-anchor?-update!
          break-force-get
          break-force-set!
          break-force-update!
          break-torque-get
          break-torque-set!
          break-torque-update!
          enable-collision?-get
          enable-collision?-set!
          enable-collision?-update!
          enable-preprocessing?-get
          enable-preprocessing?-set!
          enable-preprocessing?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Joint a ...)))))
  (define (is? a) (clr-is UnityEngine.Joint a))
  (define (joint? a) (clr-is UnityEngine.Joint a))
  (define-field-port
    connected-body-get
    connected-body-set!
    connected-body-update!
    (property:)
    UnityEngine.Joint
    connectedBody
    UnityEngine.Rigidbody)
  (define-field-port
    axis-get
    axis-set!
    axis-update!
    (property:)
    UnityEngine.Joint
    axis
    UnityEngine.Vector3)
  (define-field-port
    anchor-get
    anchor-set!
    anchor-update!
    (property:)
    UnityEngine.Joint
    anchor
    UnityEngine.Vector3)
  (define-field-port
    connected-anchor-get
    connected-anchor-set!
    connected-anchor-update!
    (property:)
    UnityEngine.Joint
    connectedAnchor
    UnityEngine.Vector3)
  (define-field-port
    auto-configure-connected-anchor?-get
    auto-configure-connected-anchor?-set!
    auto-configure-connected-anchor?-update!
    (property:)
    UnityEngine.Joint
    autoConfigureConnectedAnchor
    System.Boolean)
  (define-field-port
    break-force-get
    break-force-set!
    break-force-update!
    (property:)
    UnityEngine.Joint
    breakForce
    System.Single)
  (define-field-port
    break-torque-get
    break-torque-set!
    break-torque-update!
    (property:)
    UnityEngine.Joint
    breakTorque
    System.Single)
  (define-field-port
    enable-collision?-get
    enable-collision?-set!
    enable-collision?-update!
    (property:)
    UnityEngine.Joint
    enableCollision
    System.Boolean)
  (define-field-port
    enable-preprocessing?-get
    enable-preprocessing?-set!
    enable-preprocessing?-update!
    (property:)
    UnityEngine.Joint
    enablePreprocessing
    System.Boolean))
