(library (system enterprise-services registration-helper)
  (export new
          is?
          registration-helper?
          install-assembly-from-config
          uninstall-assembly
          install-assembly
          uninstall-assembly-from-config)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.RegistrationHelper
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.RegistrationHelper a))
  (define (registration-helper? a)
    (clr-is System.EnterpriseServices.RegistrationHelper a))
  (define-method-port
    install-assembly-from-config
    System.EnterpriseServices.RegistrationHelper
    InstallAssemblyFromConfig
    (System.Void System.EnterpriseServices.RegistrationConfig&))
  (define-method-port
    uninstall-assembly
    System.EnterpriseServices.RegistrationHelper
    UninstallAssembly
    (System.Void System.String System.String System.String)
    (System.Void System.String System.String))
  (define-method-port
    install-assembly
    System.EnterpriseServices.RegistrationHelper
    InstallAssembly
    (System.Void
      System.String
      System.String&
      System.String
      System.String&
      System.EnterpriseServices.InstallationFlags)
    (System.Void
      System.String
      System.String&
      System.String&
      System.EnterpriseServices.InstallationFlags))
  (define-method-port
    uninstall-assembly-from-config
    System.EnterpriseServices.RegistrationHelper
    UninstallAssemblyFromConfig
    (System.Void System.EnterpriseServices.RegistrationConfig&)))
