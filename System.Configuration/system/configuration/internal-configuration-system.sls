(library (system configuration internal-configuration-system)
  (export new
          is?
          internal-configuration-system?
          init
          init-for-configuration
          host
          root)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.InternalConfigurationSystem
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.InternalConfigurationSystem a))
  (define (internal-configuration-system? a)
    (clr-is System.Configuration.InternalConfigurationSystem a))
  (define-method-port
    init
    System.Configuration.InternalConfigurationSystem
    Init
    (System.Void System.Type System.Object[]))
  (define-method-port
    init-for-configuration
    System.Configuration.InternalConfigurationSystem
    InitForConfiguration
    (System.Void System.String& System.String& System.String&))
  (define-field-port
    host
    #f
    #f
    (property:)
    System.Configuration.InternalConfigurationSystem
    Host
    System.Configuration.Internal.IInternalConfigHost)
  (define-field-port
    root
    #f
    #f
    (property:)
    System.Configuration.InternalConfigurationSystem
    Root
    System.Configuration.Internal.IInternalConfigRoot))
