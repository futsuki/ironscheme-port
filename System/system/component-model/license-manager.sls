(library (system component-model license-manager)
  (export is?
          license-manager?
          unlock-context
          is-valid?
          lock-context
          validate
          is-licensed?
          create-with-context
          current-context-get
          current-context-set!
          current-context-update!
          usage-mode)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.ComponentModel.LicenseManager a))
  (define (license-manager? a)
    (clr-is System.ComponentModel.LicenseManager a))
  (define-method-port
    unlock-context
    System.ComponentModel.LicenseManager
    UnlockContext
    (static: System.Void System.Object))
  (define-method-port
    is-valid?
    System.ComponentModel.LicenseManager
    IsValid
    (static:
      System.Boolean
      System.Type
      System.Object
      System.ComponentModel.License&)
    (static: System.Boolean System.Type))
  (define-method-port
    lock-context
    System.ComponentModel.LicenseManager
    LockContext
    (static: System.Void System.Object))
  (define-method-port
    validate
    System.ComponentModel.LicenseManager
    Validate
    (static: System.ComponentModel.License System.Type System.Object)
    (static: System.Void System.Type))
  (define-method-port
    is-licensed?
    System.ComponentModel.LicenseManager
    IsLicensed
    (static: System.Boolean System.Type))
  (define-method-port
    create-with-context
    System.ComponentModel.LicenseManager
    CreateWithContext
    (static:
      System.Object
      System.Type
      System.ComponentModel.LicenseContext
      System.Object[])
    (static:
      System.Object
      System.Type
      System.ComponentModel.LicenseContext))
  (define-field-port
    current-context-get
    current-context-set!
    current-context-update!
    (static: property:)
    System.ComponentModel.LicenseManager
    CurrentContext
    System.ComponentModel.LicenseContext)
  (define-field-port
    usage-mode
    #f
    #f
    (static: property:)
    System.ComponentModel.LicenseManager
    UsageMode
    System.ComponentModel.LicenseUsageMode))
