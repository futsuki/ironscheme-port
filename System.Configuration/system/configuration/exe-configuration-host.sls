(library (system configuration exe-configuration-host)
  (export new
          is?
          exe-configuration-host?
          get-stream-name
          init
          init-for-configuration)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Configuration.ExeConfigurationHost a ...)))))
  (define (is? a) (clr-is System.Configuration.ExeConfigurationHost a))
  (define (exe-configuration-host? a)
    (clr-is System.Configuration.ExeConfigurationHost a))
  (define-method-port
    get-stream-name
    System.Configuration.ExeConfigurationHost
    GetStreamName
    (System.String System.String))
  (define-method-port
    init
    System.Configuration.ExeConfigurationHost
    Init
    (System.Void
      System.Configuration.Internal.IInternalConfigRoot
      System.Object[]))
  (define-method-port
    init-for-configuration
    System.Configuration.ExeConfigurationHost
    InitForConfiguration
    (System.Void
      System.String&
      System.String&
      System.String&
      System.Configuration.Internal.IInternalConfigRoot
      System.Object[])))
