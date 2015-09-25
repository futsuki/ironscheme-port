(library (system component-model design runtime-license-context)
  (export new
          is?
          runtime-license-context?
          set-saved-license-key
          get-saved-license-key)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.Design.RuntimeLicenseContext
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.Design.RuntimeLicenseContext a))
  (define (runtime-license-context? a)
    (clr-is System.ComponentModel.Design.RuntimeLicenseContext a))
  (define-method-port
    set-saved-license-key
    System.ComponentModel.Design.RuntimeLicenseContext
    SetSavedLicenseKey
    (System.Void System.Type System.String))
  (define-method-port
    get-saved-license-key
    System.ComponentModel.Design.RuntimeLicenseContext
    GetSavedLicenseKey
    (System.String System.Type System.Reflection.Assembly)))
