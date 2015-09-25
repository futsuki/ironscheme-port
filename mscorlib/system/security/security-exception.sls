(library (system security security-exception)
  (export new
          is?
          security-exception?
          get-object-data
          to-string
          action-get
          action-set!
          action-update!
          deny-set-instance-get
          deny-set-instance-set!
          deny-set-instance-update!
          failed-assembly-info-get
          failed-assembly-info-set!
          failed-assembly-info-update!
          method-get
          method-set!
          method-update!
          permit-only-set-instance-get
          permit-only-set-instance-set!
          permit-only-set-instance-update!
          url-get
          url-set!
          url-update!
          zone-get
          zone-set!
          zone-update!
          demanded-get
          demanded-set!
          demanded-update!
          first-permission-that-failed-get
          first-permission-that-failed-set!
          first-permission-that-failed-update!
          permission-state-get
          permission-state-set!
          permission-state-update!
          permission-type-get
          permission-type-set!
          permission-type-update!
          granted-set-get
          granted-set-set!
          granted-set-update!
          refused-set-get
          refused-set-set!
          refused-set-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.SecurityException a ...)))))
  (define (is? a) (clr-is System.Security.SecurityException a))
  (define (security-exception? a)
    (clr-is System.Security.SecurityException a))
  (define-method-port
    get-object-data
    System.Security.SecurityException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    to-string
    System.Security.SecurityException
    ToString
    (System.String))
  (define-field-port
    action-get
    action-set!
    action-update!
    (property:)
    System.Security.SecurityException
    Action
    System.Security.Permissions.SecurityAction)
  (define-field-port
    deny-set-instance-get
    deny-set-instance-set!
    deny-set-instance-update!
    (property:)
    System.Security.SecurityException
    DenySetInstance
    System.Object)
  (define-field-port
    failed-assembly-info-get
    failed-assembly-info-set!
    failed-assembly-info-update!
    (property:)
    System.Security.SecurityException
    FailedAssemblyInfo
    System.Reflection.AssemblyName)
  (define-field-port
    method-get
    method-set!
    method-update!
    (property:)
    System.Security.SecurityException
    Method
    System.Reflection.MethodInfo)
  (define-field-port
    permit-only-set-instance-get
    permit-only-set-instance-set!
    permit-only-set-instance-update!
    (property:)
    System.Security.SecurityException
    PermitOnlySetInstance
    System.Object)
  (define-field-port
    url-get
    url-set!
    url-update!
    (property:)
    System.Security.SecurityException
    Url
    System.String)
  (define-field-port
    zone-get
    zone-set!
    zone-update!
    (property:)
    System.Security.SecurityException
    Zone
    System.Security.SecurityZone)
  (define-field-port
    demanded-get
    demanded-set!
    demanded-update!
    (property:)
    System.Security.SecurityException
    Demanded
    System.Object)
  (define-field-port
    first-permission-that-failed-get
    first-permission-that-failed-set!
    first-permission-that-failed-update!
    (property:)
    System.Security.SecurityException
    FirstPermissionThatFailed
    System.Security.IPermission)
  (define-field-port
    permission-state-get
    permission-state-set!
    permission-state-update!
    (property:)
    System.Security.SecurityException
    PermissionState
    System.String)
  (define-field-port
    permission-type-get
    permission-type-set!
    permission-type-update!
    (property:)
    System.Security.SecurityException
    PermissionType
    System.Type)
  (define-field-port
    granted-set-get
    granted-set-set!
    granted-set-update!
    (property:)
    System.Security.SecurityException
    GrantedSet
    System.String)
  (define-field-port
    refused-set-get
    refused-set-set!
    refused-set-update!
    (property:)
    System.Security.SecurityException
    RefusedSet
    System.String))
