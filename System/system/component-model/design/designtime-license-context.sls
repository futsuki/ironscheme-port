(library (system component-model design designtime-license-context)
  (export new
          is?
          designtime-license-context?
          set-saved-license-key
          get-saved-license-key
          usage-mode)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.Design.DesigntimeLicenseContext
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.Design.DesigntimeLicenseContext a))
  (define (designtime-license-context? a)
    (clr-is System.ComponentModel.Design.DesigntimeLicenseContext a))
  (define-method-port
    set-saved-license-key
    System.ComponentModel.Design.DesigntimeLicenseContext
    SetSavedLicenseKey
    (System.Void System.Type System.String))
  (define-method-port
    get-saved-license-key
    System.ComponentModel.Design.DesigntimeLicenseContext
    GetSavedLicenseKey
    (System.String System.Type System.Reflection.Assembly))
  (define-field-port
    usage-mode
    #f
    #f
    (property:)
    System.ComponentModel.Design.DesigntimeLicenseContext
    UsageMode
    System.ComponentModel.LicenseUsageMode))
