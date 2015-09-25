(library (system enterprise-services registration-helper-tx)
  (export new
          is?
          registration-helper-tx?
          install-assembly-from-config
          uninstall-assembly
          install-assembly
          uninstall-assembly-from-config
          is-in-transaction?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.RegistrationHelperTx
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.RegistrationHelperTx a))
  (define (registration-helper-tx? a)
    (clr-is System.EnterpriseServices.RegistrationHelperTx a))
  (define-method-port
    install-assembly-from-config
    System.EnterpriseServices.RegistrationHelperTx
    InstallAssemblyFromConfig
    (System.Void
      System.EnterpriseServices.RegistrationConfig&
      System.Object))
  (define-method-port
    uninstall-assembly
    System.EnterpriseServices.RegistrationHelperTx
    UninstallAssembly
    (System.Void
      System.String
      System.String
      System.String
      System.Object)
    (System.Void System.String System.String System.Object))
  (define-method-port
    install-assembly
    System.EnterpriseServices.RegistrationHelperTx
    InstallAssembly
    (System.Void
      System.String
      System.String&
      System.String
      System.String&
      System.EnterpriseServices.InstallationFlags
      System.Object)
    (System.Void
      System.String
      System.String&
      System.String&
      System.EnterpriseServices.InstallationFlags
      System.Object))
  (define-method-port
    uninstall-assembly-from-config
    System.EnterpriseServices.RegistrationHelperTx
    UninstallAssemblyFromConfig
    (System.Void
      System.EnterpriseServices.RegistrationConfig&
      System.Object))
  (define-method-port
    is-in-transaction?
    System.EnterpriseServices.RegistrationHelperTx
    IsInTransaction
    (System.Boolean)))
