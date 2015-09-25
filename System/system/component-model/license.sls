(library (system component-model license)
  (export is? license? dispose license-key)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.ComponentModel.License a))
  (define (license? a) (clr-is System.ComponentModel.License a))
  (define-method-port
    dispose
    System.ComponentModel.License
    Dispose
    (System.Void))
  (define-field-port
    license-key
    #f
    #f
    (property:)
    System.ComponentModel.License
    LicenseKey
    System.String))
