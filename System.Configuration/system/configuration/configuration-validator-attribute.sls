(library (system configuration configuration-validator-attribute)
  (export new
          is?
          configuration-validator-attribute?
          validator-instance
          validator-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.ConfigurationValidatorAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.ConfigurationValidatorAttribute a))
  (define (configuration-validator-attribute? a)
    (clr-is System.Configuration.ConfigurationValidatorAttribute a))
  (define-field-port
    validator-instance
    #f
    #f
    (property:)
    System.Configuration.ConfigurationValidatorAttribute
    ValidatorInstance
    System.Configuration.ConfigurationValidatorBase)
  (define-field-port
    validator-type
    #f
    #f
    (property:)
    System.Configuration.ConfigurationValidatorAttribute
    ValidatorType
    System.Type))
