(library (system configuration integer-validator-attribute)
  (export new
          is?
          integer-validator-attribute?
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
             System.Configuration.IntegerValidatorAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.IntegerValidatorAttribute a))
  (define (integer-validator-attribute? a)
    (clr-is System.Configuration.IntegerValidatorAttribute a))
  (define-field-port
    exclude-range?-get
    exclude-range?-set!
    exclude-range?-update!
    (property:)
    System.Configuration.IntegerValidatorAttribute
    ExcludeRange
    System.Boolean)
  (define-field-port
    max-value-get
    max-value-set!
    max-value-update!
    (property:)
    System.Configuration.IntegerValidatorAttribute
    MaxValue
    System.Int32)
  (define-field-port
    min-value-get
    min-value-set!
    min-value-update!
    (property:)
    System.Configuration.IntegerValidatorAttribute
    MinValue
    System.Int32)
  (define-field-port
    validator-instance
    #f
    #f
    (property:)
    System.Configuration.IntegerValidatorAttribute
    ValidatorInstance
    System.Configuration.ConfigurationValidatorBase))
