(library (unity-engine i-phone-settings)
  (export new
          is?
          i-phone-settings?
          stop-location-service-updates
          start-location-service-updates
          screen-orientation
          vertical-orientation?
          screen-can-darken?
          unique-identifier
          name
          model
          system-name
          system-version
          internet-reachability
          generation
          location-service-status
          location-service-enabled-by-user?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.iPhoneSettings a ...)))))
  (define (is? a) (clr-is UnityEngine.iPhoneSettings a))
  (define (i-phone-settings? a) (clr-is UnityEngine.iPhoneSettings a))
  (define-method-port
    stop-location-service-updates
    UnityEngine.iPhoneSettings
    StopLocationServiceUpdates
    (static: System.Void))
  (define-method-port
    start-location-service-updates
    UnityEngine.iPhoneSettings
    StartLocationServiceUpdates
    (static: System.Void)
    (static: System.Void System.Single)
    (static: System.Void System.Single System.Single))
  (define-field-port
    screen-orientation
    #f
    #f
    (static: property:)
    UnityEngine.iPhoneSettings
    screenOrientation
    UnityEngine.iPhoneScreenOrientation)
  (define-field-port
    vertical-orientation?
    #f
    #f
    (static: property:)
    UnityEngine.iPhoneSettings
    verticalOrientation
    System.Boolean)
  (define-field-port
    screen-can-darken?
    #f
    #f
    (static: property:)
    UnityEngine.iPhoneSettings
    screenCanDarken
    System.Boolean)
  (define-field-port
    unique-identifier
    #f
    #f
    (static: property:)
    UnityEngine.iPhoneSettings
    uniqueIdentifier
    System.String)
  (define-field-port
    name
    #f
    #f
    (static: property:)
    UnityEngine.iPhoneSettings
    name
    System.String)
  (define-field-port
    model
    #f
    #f
    (static: property:)
    UnityEngine.iPhoneSettings
    model
    System.String)
  (define-field-port
    system-name
    #f
    #f
    (static: property:)
    UnityEngine.iPhoneSettings
    systemName
    System.String)
  (define-field-port
    system-version
    #f
    #f
    (static: property:)
    UnityEngine.iPhoneSettings
    systemVersion
    System.String)
  (define-field-port
    internet-reachability
    #f
    #f
    (static: property:)
    UnityEngine.iPhoneSettings
    internetReachability
    UnityEngine.iPhoneNetworkReachability)
  (define-field-port
    generation
    #f
    #f
    (static: property:)
    UnityEngine.iPhoneSettings
    generation
    UnityEngine.iPhoneGeneration)
  (define-field-port
    location-service-status
    #f
    #f
    (static: property:)
    UnityEngine.iPhoneSettings
    locationServiceStatus
    UnityEngine.LocationServiceStatus)
  (define-field-port
    location-service-enabled-by-user?
    #f
    #f
    (static: property:)
    UnityEngine.iPhoneSettings
    locationServiceEnabledByUser
    System.Boolean))
