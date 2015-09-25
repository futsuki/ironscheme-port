(library (system enterprise-services shared-property)
  (export is? shared-property? value-get value-set! value-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.EnterpriseServices.SharedProperty a))
  (define (shared-property? a)
    (clr-is System.EnterpriseServices.SharedProperty a))
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.EnterpriseServices.SharedProperty
    Value
    System.Object))
