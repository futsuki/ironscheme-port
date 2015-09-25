(library (system security host-protection-exception)
  (export new
          is?
          host-protection-exception?
          get-object-data
          to-string
          demanded-resources
          protected-resources)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.HostProtectionException a ...)))))
  (define (is? a) (clr-is System.Security.HostProtectionException a))
  (define (host-protection-exception? a)
    (clr-is System.Security.HostProtectionException a))
  (define-method-port
    get-object-data
    System.Security.HostProtectionException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    to-string
    System.Security.HostProtectionException
    ToString
    (System.String))
  (define-field-port
    demanded-resources
    #f
    #f
    (property:)
    System.Security.HostProtectionException
    DemandedResources
    System.Security.Permissions.HostProtectionResource)
  (define-field-port
    protected-resources
    #f
    #f
    (property:)
    System.Security.HostProtectionException
    ProtectedResources
    System.Security.Permissions.HostProtectionResource))
