(library (system enterprise-services registration-config)
  (export new
          is?
          registration-config?
          application-get
          application-set!
          application-update!
          application-root-directory-get
          application-root-directory-set!
          application-root-directory-update!
          assembly-file-get
          assembly-file-set!
          assembly-file-update!
          installation-flags-get
          installation-flags-set!
          installation-flags-update!
          partition-get
          partition-set!
          partition-update!
          type-library-get
          type-library-set!
          type-library-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.RegistrationConfig
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.RegistrationConfig a))
  (define (registration-config? a)
    (clr-is System.EnterpriseServices.RegistrationConfig a))
  (define-field-port
    application-get
    application-set!
    application-update!
    (property:)
    System.EnterpriseServices.RegistrationConfig
    Application
    System.String)
  (define-field-port
    application-root-directory-get
    application-root-directory-set!
    application-root-directory-update!
    (property:)
    System.EnterpriseServices.RegistrationConfig
    ApplicationRootDirectory
    System.String)
  (define-field-port
    assembly-file-get
    assembly-file-set!
    assembly-file-update!
    (property:)
    System.EnterpriseServices.RegistrationConfig
    AssemblyFile
    System.String)
  (define-field-port
    installation-flags-get
    installation-flags-set!
    installation-flags-update!
    (property:)
    System.EnterpriseServices.RegistrationConfig
    InstallationFlags
    System.EnterpriseServices.InstallationFlags)
  (define-field-port
    partition-get
    partition-set!
    partition-update!
    (property:)
    System.EnterpriseServices.RegistrationConfig
    Partition
    System.String)
  (define-field-port
    type-library-get
    type-library-set!
    type-library-update!
    (property:)
    System.EnterpriseServices.RegistrationConfig
    TypeLibrary
    System.String))
