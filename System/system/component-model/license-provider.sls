(library (system component-model license-provider)
  (export is? license-provider? get-license)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.ComponentModel.LicenseProvider a))
  (define (license-provider? a)
    (clr-is System.ComponentModel.LicenseProvider a))
  (define-method-port
    get-license
    System.ComponentModel.LicenseProvider
    GetLicense
    (System.ComponentModel.License
      System.ComponentModel.LicenseContext
      System.Type
      System.Object
      System.Boolean)))
