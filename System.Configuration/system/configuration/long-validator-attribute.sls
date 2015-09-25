(library (system configuration long-validator-attribute)
  (export new
          is?
          long-validator-attribute?
          exclude-range?-get
          exclude-range?-set!
          exclude-range?-update!
          max-value-get
          max-value-set!
          max-value-update!
          min-value-get
          min-value-set!
          min-value-update!
          validator-instance)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.LongValidatorAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.LongValidatorAttribute a))
  (define (long-validator-attribute? a)
    (clr-is System.Configuration.LongValidatorAttribute a))
  (define-field-port
    exclude-range?-get
    exclude-range?-set!
    exclude-range?-update!
    (property:)
    System.Configuration.LongValidatorAttribute
    ExcludeRange
    System.Boolean)
  (define-field-port
    max-value-get
    max-value-set!
    max-value-update!
    (property:)
    System.Configuration.LongValidatorAttribute
    MaxValue
    System.Int64)
  (define-field-port
    min-value-get
    min-value-set!
    min-value-update!
    (property:)
    System.Configuration.LongValidatorAttribute
    MinValue
    System.Int64)
  (define-field-port
    validator-instance
    #f
    #f
    (property:)
    System.Configuration.LongValidatorAttribute
    ValidatorInstance
    System.Configuration.ConfigurationValidatorBase))
