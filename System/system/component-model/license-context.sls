(library (system component-model license-context)
  (export new
          is?
          license-context?
          set-saved-license-key
          get-service
          get-saved-license-key
          usage-mode)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.LicenseContext a ...)))))
  (define (is? a) (clr-is System.ComponentModel.LicenseContext a))
  (define (license-context? a)
    (clr-is System.ComponentModel.LicenseContext a))
  (define-method-port
    set-saved-license-key
    System.ComponentModel.LicenseContext
    SetSavedLicenseKey
    (System.Void System.Type System.String))
  (define-method-port
    get-service
    System.ComponentModel.LicenseContext
    GetService
    (System.Object System.Type))
  (define-method-port
    get-saved-license-key
    System.ComponentModel.LicenseContext
    GetSavedLicenseKey
    (System.String System.Type System.Reflection.Assembly))
  (define-field-port
    usage-mode
    #f
    #f
    (property:)
    System.ComponentModel.LicenseContext
    UsageMode
    System.ComponentModel.LicenseUsageMode))
