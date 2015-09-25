(library (system component-model lic-file-license-provider)
  (export new is? lic-file-license-provider? get-license)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.LicFileLicenseProvider
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.LicFileLicenseProvider a))
  (define (lic-file-license-provider? a)
    (clr-is System.ComponentModel.LicFileLicenseProvider a))
  (define-method-port
    get-license
    System.ComponentModel.LicFileLicenseProvider
    GetLicense
    (System.ComponentModel.License
      System.ComponentModel.LicenseContext
      System.Type
      System.Object
      System.Boolean)))
