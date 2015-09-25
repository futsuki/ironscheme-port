(library (unity-engine location-service)
  (export new
          is?
          location-service?
          stop
          start
          is-enabled-by-user?
          status
          last-data)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.LocationService a ...)))))
  (define (is? a) (clr-is UnityEngine.LocationService a))
  (define (location-service? a) (clr-is UnityEngine.LocationService a))
  (define-method-port
    stop
    UnityEngine.LocationService
    Stop
    (System.Void))
  (define-method-port
    start
    UnityEngine.LocationService
    Start
    (System.Void)
    (System.Void System.Single)
    (System.Void System.Single System.Single))
  (define-field-port
    is-enabled-by-user?
    #f
    #f
    (property:)
    UnityEngine.LocationService
    isEnabledByUser
    System.Boolean)
  (define-field-port
    status
    #f
    #f
    (property:)
    UnityEngine.LocationService
    status
    UnityEngine.LocationServiceStatus)
  (define-field-port
    last-data
    #f
    #f
    (property:)
    UnityEngine.LocationService
    lastData
    UnityEngine.LocationInfo))
