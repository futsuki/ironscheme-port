(library (system configuration positive-time-span-validator-attribute)
  (export new
          is?
          positive-time-span-validator-attribute?
          validator-instance)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.PositiveTimeSpanValidatorAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.PositiveTimeSpanValidatorAttribute a))
  (define (positive-time-span-validator-attribute? a)
    (clr-is System.Configuration.PositiveTimeSpanValidatorAttribute a))
  (define-field-port
    validator-instance
    #f
    #f
    (property:)
    System.Configuration.PositiveTimeSpanValidatorAttribute
    ValidatorInstance
    System.Configuration.ConfigurationValidatorBase))
