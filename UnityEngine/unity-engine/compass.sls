(library (unity-engine compass)
  (export new
          is?
          compass?
          magnetic-heading
          true-heading
          heading-accuracy
          raw-vector
          timestamp
          enabled?-get
          enabled?-set!
          enabled?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Compass a ...)))))
  (define (is? a) (clr-is UnityEngine.Compass a))
  (define (compass? a) (clr-is UnityEngine.Compass a))
  (define-field-port
    magnetic-heading
    #f
    #f
    (property:)
    UnityEngine.Compass
    magneticHeading
    System.Single)
  (define-field-port
    true-heading
    #f
    #f
    (property:)
    UnityEngine.Compass
    trueHeading
    System.Single)
  (define-field-port
    heading-accuracy
    #f
    #f
    (property:)
    UnityEngine.Compass
    headingAccuracy
    System.Single)
  (define-field-port
    raw-vector
    #f
    #f
    (property:)
    UnityEngine.Compass
    rawVector
    UnityEngine.Vector3)
  (define-field-port
    timestamp
    #f
    #f
    (property:)
    UnityEngine.Compass
    timestamp
    System.Double)
  (define-field-port
    enabled?-get
    enabled?-set!
    enabled?-update!
    (property:)
    UnityEngine.Compass
    enabled
    System.Boolean))
