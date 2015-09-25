(library (unity-engine spring-joint)
  (export new
          is?
          spring-joint?
          spring-get
          spring-set!
          spring-update!
          damper-get
          damper-set!
          damper-update!
          min-distance-get
          min-distance-set!
          min-distance-update!
          max-distance-get
          max-distance-set!
          max-distance-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.SpringJoint a ...)))))
  (define (is? a) (clr-is UnityEngine.SpringJoint a))
  (define (spring-joint? a) (clr-is UnityEngine.SpringJoint a))
  (define-field-port
    spring-get
    spring-set!
    spring-update!
    (property:)
    UnityEngine.SpringJoint
    spring
    System.Single)
  (define-field-port
    damper-get
    damper-set!
    damper-update!
    (property:)
    UnityEngine.SpringJoint
    damper
    System.Single)
  (define-field-port
    min-distance-get
    min-distance-set!
    min-distance-update!
    (property:)
    UnityEngine.SpringJoint
    minDistance
    System.Single)
  (define-field-port
    max-distance-get
    max-distance-set!
    max-distance-update!
    (property:)
    UnityEngine.SpringJoint
    maxDistance
    System.Single))
