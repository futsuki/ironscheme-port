(library (system operating-system)
  (export new
          is?
          operating-system?
          get-object-data
          clone
          to-string
          platform
          version
          service-pack
          version-string)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.OperatingSystem a ...)))))
  (define (is? a) (clr-is System.OperatingSystem a))
  (define (operating-system? a) (clr-is System.OperatingSystem a))
  (define-method-port
    get-object-data
    System.OperatingSystem
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    clone
    System.OperatingSystem
    Clone
    (System.Object))
  (define-method-port
    to-string
    System.OperatingSystem
    ToString
    (System.String))
  (define-field-port
    platform
    #f
    #f
    (property:)
    System.OperatingSystem
    Platform
    System.PlatformID)
  (define-field-port
    version
    #f
    #f
    (property:)
    System.OperatingSystem
    Version
    System.Version)
  (define-field-port
    service-pack
    #f
    #f
    (property:)
    System.OperatingSystem
    ServicePack
    System.String)
  (define-field-port
    version-string
    #f
    #f
    (property:)
    System.OperatingSystem
    VersionString
    System.String))
