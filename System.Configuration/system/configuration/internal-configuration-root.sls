(library (system configuration internal-configuration-root)
  (export new
          is?
          internal-configuration-root?
          get-config-record
          get-section
          init
          get-unique-config-path
          remove-config
          get-unique-config-record
          is-design-time?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.InternalConfigurationRoot
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.InternalConfigurationRoot a))
  (define (internal-configuration-root? a)
    (clr-is System.Configuration.InternalConfigurationRoot a))
  (define-method-port
    get-config-record
    System.Configuration.InternalConfigurationRoot
    GetConfigRecord
    (System.Configuration.Internal.IInternalConfigRecord System.String))
  (define-method-port
    get-section
    System.Configuration.InternalConfigurationRoot
    GetSection
    (System.Object System.String System.String))
  (define-method-port
    init
    System.Configuration.InternalConfigurationRoot
    Init
    (System.Void
      System.Configuration.Internal.IInternalConfigHost
      System.Boolean))
  (define-method-port
    get-unique-config-path
    System.Configuration.InternalConfigurationRoot
    GetUniqueConfigPath
    (System.String System.String))
  (define-method-port
    remove-config
    System.Configuration.InternalConfigurationRoot
    RemoveConfig
    (System.Void System.String))
  (define-method-port
    get-unique-config-record
    System.Configuration.InternalConfigurationRoot
    GetUniqueConfigRecord
    (System.Configuration.Internal.IInternalConfigRecord System.String))
  (define-field-port
    is-design-time?
    #f
    #f
    (property:)
    System.Configuration.InternalConfigurationRoot
    IsDesignTime
    System.Boolean))
