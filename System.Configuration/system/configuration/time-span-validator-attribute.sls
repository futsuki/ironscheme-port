(library (system configuration time-span-validator-attribute)
  (export new
          is?
          time-span-validator-attribute?
          time-span-max-value
          time-span-min-value
          max-value-string-get
          max-value-string-set!
          max-value-string-update!
          min-value-string-get
          min-value-string-set!
          min-value-string-update!
          max-value
          min-value
          exclude-range?-get
          exclude-range?-set!
          exclude-range?-update!
          validator-instance)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.TimeSpanValidatorAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.TimeSpanValidatorAttribute a))
  (define (time-span-validator-attribute? a)
    (clr-is System.Configuration.TimeSpanValidatorAttribute a))
  (define-field-port
    time-span-max-value
    #f
    #f
    (static:)
    System.Configuration.TimeSpanValidatorAttribute
    TimeSpanMaxValue
    System.String)
  (define-field-port
    time-span-min-value
    #f
    #f
    (static:)
    System.Configuration.TimeSpanValidatorAttribute
    TimeSpanMinValue
    System.String)
  (define-field-port
    max-value-string-get
    max-value-string-set!
    max-value-string-update!
    (property:)
    System.Configuration.TimeSpanValidatorAttribute
    MaxValueString
    System.String)
  (define-field-port
    min-value-string-get
    min-value-string-set!
    min-value-string-update!
    (property:)
    System.Configuration.TimeSpanValidatorAttribute
    MinValueString
    System.String)
  (define-field-port
    max-value
    #f
    #f
    (property:)
    System.Configuration.TimeSpanValidatorAttribute
    MaxValue
    System.TimeSpan)
  (define-field-port
    min-value
    #f
    #f
    (property:)
    System.Configuration.TimeSpanValidatorAttribute
    MinValue
    System.TimeSpan)
  (define-field-port
    exclude-range?-get
    exclude-range?-set!
    exclude-range?-update!
    (property:)
    System.Configuration.TimeSpanValidatorAttribute
    ExcludeRange
    System.Boolean)
  (define-field-port
    validator-instance
    #f
    #f
    (property:)
    System.Configuration.TimeSpanValidatorAttribute
    ValidatorInstance
    System.Configuration.ConfigurationValidatorBase))
