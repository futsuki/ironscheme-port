(library (system component-model lic-file-license)
  (export new is? lic-file-license? dispose license-key)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.LicFileLicense a ...)))))
  (define (is? a) (clr-is System.ComponentModel.LicFileLicense a))
  (define (lic-file-license? a)
    (clr-is System.ComponentModel.LicFileLicense a))
  (define-method-port
    dispose
    System.ComponentModel.LicFileLicense
    Dispose
    (System.Void))
  (define-field-port
    license-key
    #f
    #f
    (property:)
    System.ComponentModel.LicFileLicense
    LicenseKey
    System.String))
