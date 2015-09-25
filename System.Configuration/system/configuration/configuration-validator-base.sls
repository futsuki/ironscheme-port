(library (system configuration configuration-validator-base)
  (export is? configuration-validator-base? can-validate? validate)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Configuration.ConfigurationValidatorBase a))
  (define (configuration-validator-base? a)
    (clr-is System.Configuration.ConfigurationValidatorBase a))
  (define-method-port
    can-validate?
    System.Configuration.ConfigurationValidatorBase
    CanValidate
    (System.Boolean System.Type))
  (define-method-port
    validate
    System.Configuration.ConfigurationValidatorBase
    Validate
    (System.Void System.Object)))
